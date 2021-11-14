// ==UserScript==
// @name           www.reddit to old.reddit
// @namespace      qutebrowser scripts
// @match          http://reddit.com/*
// @match          https://reddit.com/*
// @match          http://www.reddit.com/*
// @match          https://www.reddit.com/*
// @run-at         document-start
// ==/UserScript==

location.href=location.href.replace("www.reddit","old.reddit");
