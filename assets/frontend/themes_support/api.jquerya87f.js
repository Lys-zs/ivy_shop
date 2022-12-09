﻿function floatToString(t, r) {
    var e = t.toFixed(r).toString();
    return e.match(/^\.\d+/) ? "0" + e : e
}

function attributeToString(t) {
    return "string" != typeof t && (t += "", "undefined" === t && (t = "")), jQuery.trim(t)
}

"undefined" == typeof Bizweb && (Bizweb = {});

Bizweb.mediaDomainName = "//bizweb.dktcdn.net/";

Bizweb.money_format = "${{amount}}", Bizweb.onError = function (XMLHttpRequest, textStatus) {
    var data = eval("(" + XMLHttpRequest.responseText + ")");
    alert(data.message ? data.message + "(" + data.status + "): " + data.description : "Error : " + Bizweb.fullMessagesFromErrors(data).join("; ") + ".")
}, Bizweb.fullMessagesFromErrors = function (t) {
    var r = [];
    return jQuery.each(t, function (t, e) {
        jQuery.each(e, function (e, o) {
            r.push(t + " " + o)
        })
    }), r
}, Bizweb.onCartUpdate = function (t) {
    alert("There are now " + t.item_count + " items in the cart.")
}, Bizweb.onCartShippingRatesUpdate = function (t, r) {
    var e = "";
    r.zip && (e += r.zip + ", "), r.province && (e += r.province + ", "), e += r.country, alert("There are " + t.length + " shipping rates available for " + e + ", starting at " + Bizweb.formatMoney(t[0].price) + ".")
}, Bizweb.onItemAdded = function (t) {
    alert(t.title + " was added to your shopping cart.")
}, Bizweb.onProduct = function (t) {
    alert("Received everything we ever wanted to know about " + t.title)
}, Bizweb.formatMoney = function (amount, moneyFormat) {
    function getDefault(value, defaultValue) {
        if (typeof value == "undefined")
            return defaultValue;

        return value;
    }

    function formatMoney(amount, decimal, thousandSeperate, decimalSeperate) {
        decimal = getDefault(decimal, 2);
        thousandSeperate = getDefault(thousandSeperate, ",");
        decimalSeperate = getDefault(decimalSeperate, ".");

        if (isNaN(amount) || null == amount)
            return 0;

        amount = amount.toFixed(decimal);

        var amountParts = amount.split(".");
        var integer = amountParts[0].replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1" + thousandSeperate);
        var decimal = amountParts[1] ? decimalSeperate + amountParts[1] : "";

        return integer + decimal;
    }

    if (typeof amount == "string") {
        amount = amount.replace(".", "");
        amount = amount.replace(",", "");
    }

    var result = "";
    var moneyRegex = /\{\{\s*(\w+)\s*\}\}/;

    moneyFormat = moneyFormat || this.money_format;
    switch (moneyFormat.match(moneyRegex)[1]) {
        case "amount":
            result = formatMoney(amount, 2);
            break;
        case "amount_no_decimals":
            result = formatMoney(amount, 0);
            break;
        case "amount_with_comma_separator":
            result = formatMoney(amount, 2, ".", ",");
            break;
        case "amount_no_decimals_with_comma_separator":
            result = formatMoney(amount, 0, ".", ",")
    }

    return moneyFormat.replace(moneyRegex, result)
}, Bizweb.resizeImage = function (t, r) {
    try {
        if ("original" == r)
            return t;

        var thumbDomain = Bizweb.mediaDomainName + "thumb/" + r + "/";
        return t.replace(Bizweb.mediaDomainName, thumbDomain).split('?')[0];
    } catch (o) {
        return t
    }
}, Bizweb.addItem = function (t, r, e) {
    var r = r || 1,
        o = {
            type: "POST",
            url: "/cart/add.js",
            data: "quantity=" + r + "&VariantId=" + t,
            dataType: "json",
            success: function (t) {
                "function" == typeof e ? e(t) : Bizweb.onItemAdded(t)
            },
            error: function (t, r) {
                Bizweb.onError(t, r)
            }
        };
    jQuery.ajax(o)
}, Bizweb.addItemFromForm = function (t, r) {
    var e = {
        type: "POST",
        url: "/cart/add.js",
        data: jQuery("#" + t).serialize(),
        dataType: "json",
        success: function (t) {
            "function" == typeof r ? r(t) : Bizweb.onItemAdded(t)
        },
        error: function (t, r) {
            Bizweb.onError(t, r)
        }
    };
    jQuery.ajax(e)
}, Bizweb.getCart = function (t) {
    jQuery.getJSON("/cart.js", function (r) {
        "function" == typeof t ? t(r) : Bizweb.onCartUpdate(r)
    })
}, Bizweb.pollForCartShippingRatesForDestination = function (t, r, e) {
    e = e || Bizweb.onError;
    var o = function () {
        jQuery.ajax("/cart/async_shipping_rates", {
            dataType: "json",
            success: function (e, n, a) {
                200 === a.status ? "function" == typeof r ? r(e.shipping_rates, t) : Bizweb.onCartShippingRatesUpdate(e.shipping_rates, t) : setTimeout(o, 500)
            },
            error: e
        })
    };
    return o
}, Bizweb.getCartShippingRatesForDestination = function (t, r, e) {
    e = e || Bizweb.onError;
    var o = {
        type: "POST",
        url: "/cart/prepare_shipping_rates",
        data: Bizweb.param({
            shipping_address: t
        }),
        success: Bizweb.pollForCartShippingRatesForDestination(t, r, e),
        error: e
    };
    jQuery.ajax(o)
}, Bizweb.getProduct = function (t, r) {
    jQuery.getJSON("/products/" + t + ".js", function (t) {
        "function" == typeof r ? r(t) : Bizweb.onProduct(t)
    })
}, Bizweb.changeItem = function (t, r, e) {
    var o = {
        type: "POST",
        url: "/cart/change.js",
        data: "quantity=" + r + "&variantId=" + t,
        dataType: "json",
        success: function (t) {
            "function" == typeof e ? e(t) : Bizweb.onCartUpdate(t)
        },
        error: function (t, r) {
            Bizweb.onError(t, r)
        }
    };
    jQuery.ajax(o)
}, Bizweb.removeItem = function (t, r) {
    var e = {
        type: "POST",
        url: "/cart/change.js",
        data: "quantity=0&variantId=" + t,
        dataType: "json",
        success: function (t) {
            "function" == typeof r ? r(t) : Bizweb.onCartUpdate(t)
        },
        error: function (t, r) {
            Bizweb.onError(t, r)
        }
    };
    jQuery.ajax(e)
}, Bizweb.clear = function (t) {
    var r = {
        type: "POST",
        url: "/cart/clear.js",
        data: "",
        dataType: "json",
        success: function (r) {
            "function" == typeof t ? t(r) : Bizweb.onCartUpdate(r)
        },
        error: function (t, r) {
            Bizweb.onError(t, r)
        }
    };
    jQuery.ajax(r)
}, Bizweb.updateCartFromForm = function (t, r) {
    var e = {
        type: "POST",
        url: "/cart/update.js",
        data: jQuery("#" + t).serialize(),
        dataType: "json",
        success: function (t) {
            "function" == typeof r ? r(t) : Bizweb.onCartUpdate(t)
        },
        error: function (t, r) {
            Bizweb.onError(t, r)
        }
    };
    jQuery.ajax(e)
}, Bizweb.updateCartAttributes = function (t, r) {
    var e = "";
    jQuery.isArray(t) ? jQuery.each(t, function (t, r) {
        var o = attributeToString(r.key);
        "" !== o && (e += "attributes[" + o + "]=" + attributeToString(r.value) + "&")
    }) : "object" == typeof t && null !== t && jQuery.each(t, function (t, r) {
        e += "attributes[" + attributeToString(t) + "]=" + attributeToString(r) + "&"
    });
    var o = {
        type: "POST",
        url: "/cart/update.js",
        data: e,
        dataType: "json",
        success: function (t) {
            "function" == typeof r ? r(t) : Bizweb.onCartUpdate(t)
        },
        error: function (t, r) {
            Bizweb.onError(t, r)
        }
    };
    jQuery.ajax(o)
}, Bizweb.updateCartNote = function (t, r) {
    var e = {
        type: "POST",
        url: "/cart/update.js",
        data: "note=" + attributeToString(t),
        dataType: "json",
        success: function (t) {
            "function" == typeof r ? r(t) : Bizweb.onCartUpdate(t)
        },
        error: function (t, r) {
            Bizweb.onError(t, r)
        }
    };
    jQuery.ajax(e)
}, jQuery.fn.jquery >= "1.4" ? Bizweb.param = jQuery.param : (Bizweb.param = function (t) {
    var r = [],
        e = function (t, e) {
            e = jQuery.isFunction(e) ? e() : e, r[r.length] = encodeURIComponent(t) + "=" + encodeURIComponent(e)
        };
    if (jQuery.isArray(t) || t.jquery) jQuery.each(t, function () {
        e(this.name, this.value)
    });
    else
        for (var o in t) Bizweb.buildParams(o, t[o], e);
    return r.join("&").replace(/%20/g, "+")
}, Bizweb.buildParams = function (t, r, e) {
    jQuery.isArray(r) && r.length ? jQuery.each(r, function (r, o) {
        rbracket.test(t) ? e(t, o) : Bizweb.buildParams(t + "[" + ("object" == typeof o || jQuery.isArray(o) ? r : "") + "]", o, e)
    }) : null != r && "object" == typeof r ? Bizweb.isEmptyObject(r) ? e(t, "") : jQuery.each(r, function (r, o) {
        Bizweb.buildParams(t + "[" + r + "]", o, e)
    }) : e(t, r)
}, Bizweb.isEmptyObject = function (t) {
    for (var r in t) return !1;
    return !0
});