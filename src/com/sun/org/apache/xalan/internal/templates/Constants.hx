package com.sun.org.apache.xalan.internal.templates;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: Constants.java,v 1.2.4.1 2005/09/10 19:50:56 jeffsuttor Exp $
*/
/**
* Primary constants used in the TransformerImpl classes.
* @xsl.usage advanced
*/
extern class Constants extends com.sun.org.apache.xml.internal.utils.Constants
{
	/**
	* IDs for XSL element types. These are associated
	* with the string literals in the TransformerImpl class.
	* Don't change the numbers. NOTE THAT THESE ARE NOT IN
	* ALPHABETICAL ORDER!
	* (It's a pity Java doesn't have a real Enumerated Mnemonic
	* datatype... or a C-like preprocessor in lieu thereof which
	* could be used to generate and maintain synch between these lists.)
	*/
	public static var ELEMNAME_UNDEFINED(default, null) : Int;
	
	/**
	* Literals for XSL element names.  Note that there are more
	* names than IDs, because some names map to the same ID.
	*/
	public static var ELEMNAME_ANCHOR_STRING(default, null) : String;
	
	/**
	* Literals for EXSLT function elements.
	*/
	public static var EXSLT_ELEMNAME_FUNCTION_STRING(default, null) : String;
	
	public static var EXSLT_ELEMNAME_FUNCTION(default, null) : Int;
	
	/**
	* Literals for XSL attribute names.  Note that there may be more
	* names than IDs, because some names may map to the same ID.
	*/
	public static var ATTRNAME_AMOUNT(default, null) : String;
	
	/** IDs for XSL attribute types. These are associated
	* with the string literals in the TransformerImpl class.
	* Don't change the numbers. NOTE THAT THESE ARE NOT IN
	* ALPHABETICAL ORDER!
	*/
	public static var TATTRNAME_OUTPUT_METHOD(default, null) : Int;
	
	/** Mnemonics for the possible values of the xsl:output element's
	* method= attribute:
	* <ul>
	* <li>ATTRVAL_OUTPUT_METHOD_XML = Use an XML formatter to
	* produce the output document (basic XSLT operation).</li>
	* <li>ATTRVAL_OUTPUT_METHOD_HTML: Use an HTML formatter to
	* produce the output document. When generating HTML documents,
	* this may yield better results; it does things like escaping
	* characters in href attributes.</li>
	* </li>ATTRVAL_OUTPUT_METHOD_TEXT:  Use a Text formatter to
	* produce the output document. Generally the right choice if your
	* stylesheet wants to take over _all_ the details of formatting,
	* most often when producing something that isn't an XML or HTML
	* document.</li>
	* </ul>
	* */
	public static var ATTRVAL_OUTPUT_METHOD_HTML(default, null) : String;
	
	/* For space-att*/
	public static var ATTRVAL_PRESERVE(default, null) : Int;
	
	/** For indent-result          */
	public static var ATTRVAL_YES(default, null) : Bool;
	
	/** For letter-value attribute (part of conversion attributes).          */
	public static var ATTRVAL_ALPHABETIC(default, null) : String;
	
	/** For level attribute in xsl:number.          */
	public static var ATTRVAL_SINGLE(default, null) : String;
	
	/** For Stylesheet-prefix and result-prefix in xsl:namespace-alias          */
	public static var ATTRVAL_DEFAULT_PREFIX(default, null) : String;
	
	/** Integer equivalents for above        */
	public static var NUMBERLETTER_ALPHABETIC(default, null) : Int;
	
	/** Integer equivelents for above        */
	public static var NUMBERLEVEL_SINGLE(default, null) : Int;
	
	/** some stuff for my patterns-by-example         */
	public static var ATTRVAL_THIS(default, null) : String;
	
	/** Stuff for sorting      */
	public static var ATTRVAL_DATATYPE_TEXT(default, null) : String;
	
	/** Integer equivelents for DATATYPE attribute */
	public static var SORTDATATYPE_TEXT(default, null) : Int;
	
	/** Integer equivelents for ORDER attribute */
	public static var SORTORDER_ASCENDING(default, null) : Int;
	
	/** Integer equivelents for CASE-ORDER attribute */
	public static var SORTCASEORDER_UPPERFIRST(default, null) : Int;
	
	/** some stuff for Decimal-format       */
	public static var ATTRVAL_INFINITY(default, null) : String;
	
	/** temp dummy         */
	public static var ATTRNAME_XXXX(default, null) : String;
	
	
}
