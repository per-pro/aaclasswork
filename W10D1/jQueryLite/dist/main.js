/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/dom_node_collection.js":
/*!************************************!*\
  !*** ./src/dom_node_collection.js ***!
  \************************************/
/***/ ((module) => {

eval("class DOMNodeCollection {\n    constructor(array){\n        this.array = array \n    }\n\n    html(string) {\n        if (string) {\n            this.array.forEach(node => {\n                node.innerHTML = string\n            })\n        } else if (string === undefined) {\n            return this.array[0].innerHTML\n        }\n    }\n\n    empty() {\n        this.array.forEach(node => {\n            node.innerHTML = \"\"\n        })\n    }\n\n    append(content) {\n        if(typeof content === \"object\") {\n            content = $l(content)\n        } else if (typeof content === \"string\") {\n            this.array.forEach(node => {\n                node.innerHTML += content.outerHTML\n            })\n        } else if (typeof content === \"HTMLElement\") {\n            this.array.forEach(node => {\n                node.innerHTML += content.outerHTML\n\n            });\n        }\n    };\n\n    attr(element) {\n        return element.attributes\n    };\n\n    addClass(...className){\n        this.array.forEach(node => {\n            node.classList.add(...className)  \n        })\n    }\n\n    removeClass(...className) {\n        if (className === []) {\n            this.array.forEach(node => {\n                let cl = Array.from(node.classList)\n                node.classList.remove(...cl)\n            })\n        } else {\n            this.array.forEach(node => {\n                node.classList.remove(...className)\n            })\n        }\n            \n\n\n    }\n\n\n}\n\nmodule.exports = DOMNodeCollection\n\n\n//# sourceURL=webpack://jQueryLite/./src/dom_node_collection.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
(() => {
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
eval("const DOMNodeCollection = __webpack_require__(/*! ./dom_node_collection */ \"./src/dom_node_collection.js\");\n\n\nwindow.$l = object => {\n    if (object instanceof HTMLElement) return new DOMNodeCollection([object])\n    else if (typeof object === \"string\"){\n        const matches = document.querySelectorAll(object); \n        return new DOMNodeCollection([matches])\n    }\n}\n\n//# sourceURL=webpack://jQueryLite/./src/index.js?");
})();

/******/ })()
;