// ==UserScript==
// @name           twitter to nitter
// @namespace      qutebrowser scripts
// @match          http://twitter.com/*
// @match          https://twitter.com/*
// @run-at         document-start
// ==/UserScript==

location.href=location.href.replace("twitter.com","nitter.kavin.rocks");
