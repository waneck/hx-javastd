package org.w3c.dom.css;
/*
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2000 World Wide Web Consortium,
* (Massachusetts Institute of Technology, Institut National de
* Recherche en Informatique et en Automatique, Keio University). All
* Rights Reserved. This program is distributed under the W3C's Software
* Intellectual Property License. This program is distributed in the
* hope that it will be useful, but WITHOUT ANY WARRANTY; without even
* the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
* PURPOSE.
* See W3C License http://www.w3.org/Consortium/Legal/ for more details.
*/
extern interface CSSRule
{
	/**
	*  The type of the rule, as defined above. The expectation is that
	* binding-specific casting methods can be used to cast down from an
	* instance of the <code>CSSRule</code> interface to the specific
	* derived interface implied by the <code>type</code>.
	*/
	@:overload @:public public function getType() : java.StdTypes.Int16;
	
	/**
	*  The parsable textual representation of the rule. This reflects the
	* current state of the rule and not its initial value.
	*/
	@:overload @:public public function getCssText() : String;
	
	/**
	*  The parsable textual representation of the rule. This reflects the
	* current state of the rule and not its initial value.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the specified CSS string value has a syntax
	*   error and is unparsable.
	*   <br>INVALID_MODIFICATION_ERR: Raised if the specified CSS string
	*   value represents a different type of rule than the current one.
	*   <br>HIERARCHY_REQUEST_ERR: Raised if the rule cannot be inserted at
	*   this point in the style sheet.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if the rule is readonly.
	*/
	@:overload @:public public function setCssText(cssText : String) : Void;
	
	/**
	*  The style sheet that contains this rule.
	*/
	@:overload @:public public function getParentStyleSheet() : org.w3c.dom.css.CSSStyleSheet;
	
	/**
	*  If this rule is contained inside another rule (e.g. a style rule
	* inside an @media block), this is the containing rule. If this rule is
	* not nested inside any other rules, this returns <code>null</code>.
	*/
	@:overload @:public public function getParentRule() : org.w3c.dom.css.CSSRule;
	
	
}
