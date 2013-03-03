package org.w3c.dom;
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
* Copyright (c) 2004 World Wide Web Consortium,
*
* (Massachusetts Institute of Technology, European Research Consortium for
* Informatics and Mathematics, Keio University). All Rights Reserved. This
* work is distributed under the W3C(r) Software License [1] in the hope that
* it will be useful, but WITHOUT ANY WARRANTY; without even the implied
* warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*
* [1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231
*/
/**
* <code>DOMError</code> is an interface that describes an error.
* <p>See also the <a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>Document Object Model (DOM) Level 3 Core Specification</a>.
* @since DOM Level 3
*/
extern interface DOMError
{
	/**
	* The severity of the error, either <code>SEVERITY_WARNING</code>,
	* <code>SEVERITY_ERROR</code>, or <code>SEVERITY_FATAL_ERROR</code>.
	*/
	@:overload @:public public function getSeverity() : java.StdTypes.Int16;
	
	/**
	* An implementation specific string describing the error that occurred.
	*/
	@:overload @:public public function getMessage() : String;
	
	/**
	*  A <code>DOMString</code> indicating which related data is expected in
	* <code>relatedData</code>. Users should refer to the specification of
	* the error in order to find its <code>DOMString</code> type and
	* <code>relatedData</code> definitions if any.
	* <p ><b>Note:</b>  As an example,
	* <code>Document.normalizeDocument()</code> does generate warnings when
	* the "split-cdata-sections" parameter is in use. Therefore, the method
	* generates a <code>SEVERITY_WARNING</code> with <code>type</code>
	* <code>"cdata-sections-splitted"</code> and the first
	* <code>CDATASection</code> node in document order resulting from the
	* split is returned by the <code>relatedData</code> attribute.
	*/
	@:overload @:public public function getType() : String;
	
	/**
	* The related platform dependent exception if any.
	*/
	@:overload @:public public function getRelatedException() : Dynamic;
	
	/**
	*  The related <code>DOMError.type</code> dependent data if any.
	*/
	@:overload @:public public function getRelatedData() : Dynamic;
	
	/**
	* The location of the error.
	*/
	@:overload @:public public function getLocation() : org.w3c.dom.DOMLocator;
	
	
}
