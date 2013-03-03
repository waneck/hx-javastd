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
* DOM operations only raise exceptions in "exceptional" circumstances, i.e.,
* when an operation is impossible to perform (either for logical reasons,
* because data is lost, or because the implementation has become unstable).
* In general, DOM methods return specific error values in ordinary
* processing situations, such as out-of-bound errors when using
* <code>NodeList</code>.
* <p>Implementations should raise other exceptions under other circumstances.
* For example, implementations should raise an implementation-dependent
* exception if a <code>null</code> argument is passed when <code>null</code>
*  was not expected.
* <p>Some languages and object systems do not support the concept of
* exceptions. For such systems, error conditions may be indicated using
* native error reporting mechanisms. For some bindings, for example,
* methods may return error codes similar to those listed in the
* corresponding method descriptions.
* <p>See also the <a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>Document Object Model (DOM) Level 3 Core Specification</a>.
*/
extern class DOMException extends java.lang.RuntimeException
{
	@:overload @:public public function new(code : java.StdTypes.Int16, message : String) : Void;
	
	@:public public var code : java.StdTypes.Int16;
	
	/**
	* If index or size is negative, or greater than the allowed value.
	*/
	@:public @:static @:final public static var INDEX_SIZE_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If the specified range of text does not fit into a
	* <code>DOMString</code>.
	*/
	@:public @:static @:final public static var DOMSTRING_SIZE_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If any <code>Node</code> is inserted somewhere it doesn't belong.
	*/
	@:public @:static @:final public static var HIERARCHY_REQUEST_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If a <code>Node</code> is used in a different document than the one
	* that created it (that doesn't support it).
	*/
	@:public @:static @:final public static var WRONG_DOCUMENT_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If an invalid or illegal character is specified, such as in an XML name.
	*/
	@:public @:static @:final public static var INVALID_CHARACTER_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If data is specified for a <code>Node</code> which does not support
	* data.
	*/
	@:public @:static @:final public static var NO_DATA_ALLOWED_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If an attempt is made to modify an object where modifications are not
	* allowed.
	*/
	@:public @:static @:final public static var NO_MODIFICATION_ALLOWED_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If an attempt is made to reference a <code>Node</code> in a context
	* where it does not exist.
	*/
	@:public @:static @:final public static var NOT_FOUND_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If the implementation does not support the requested type of object or
	* operation.
	*/
	@:public @:static @:final public static var NOT_SUPPORTED_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If an attempt is made to add an attribute that is already in use
	* elsewhere.
	*/
	@:public @:static @:final public static var INUSE_ATTRIBUTE_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If an attempt is made to use an object that is not, or is no longer,
	* usable.
	* @since DOM Level 2
	*/
	@:public @:static @:final public static var INVALID_STATE_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If an invalid or illegal string is specified.
	* @since DOM Level 2
	*/
	@:public @:static @:final public static var SYNTAX_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If an attempt is made to modify the type of the underlying object.
	* @since DOM Level 2
	*/
	@:public @:static @:final public static var INVALID_MODIFICATION_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If an attempt is made to create or change an object in a way which is
	* incorrect with regard to namespaces.
	* @since DOM Level 2
	*/
	@:public @:static @:final public static var NAMESPACE_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If a parameter or an operation is not supported by the underlying
	* object.
	* @since DOM Level 2
	*/
	@:public @:static @:final public static var INVALID_ACCESS_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	* If a call to a method such as <code>insertBefore</code> or
	* <code>removeChild</code> would make the <code>Node</code> invalid
	* with respect to "partial validity", this exception would be raised
	* and the operation would not be done. This code is used in [<a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Val-20040127/'>DOM Level 3 Validation</a>]
	* . Refer to this specification for further information.
	* @since DOM Level 3
	*/
	@:public @:static @:final public static var VALIDATION_ERR(default, null) : java.StdTypes.Int16;
	
	/**
	*  If the type of an object is incompatible with the expected type of the
	* parameter associated to the object.
	* @since DOM Level 3
	*/
	@:public @:static @:final public static var TYPE_MISMATCH_ERR(default, null) : java.StdTypes.Int16;
	
	
}
