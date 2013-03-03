package com.sun.org.apache.xerces.internal.impl.xs.traversers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XSAttributeChecker
{
	@:public @:static @:final public static var ATTIDX_ABSTRACT(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_AFORMDEFAULT(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_BASE(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_BLOCK(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_BLOCKDEFAULT(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_DEFAULT(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_EFORMDEFAULT(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_FINAL(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_FINALDEFAULT(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_FIXED(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_FORM(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_ID(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_ITEMTYPE(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_MAXOCCURS(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_MEMBERTYPES(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_MINOCCURS(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_MIXED(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_NAME(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_NAMESPACE(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_NAMESPACE_LIST(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_NILLABLE(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_NONSCHEMA(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_PROCESSCONTENTS(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_PUBLIC(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_REF(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_REFER(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_SCHEMALOCATION(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_SOURCE(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_SUBSGROUP(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_SYSTEM(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_TARGETNAMESPACE(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_TYPE(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_USE(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_VALUE(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_ENUMNSDECLS(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_VERSION(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_XML_LANG(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_XPATH(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_FROMDEFAULT(default, null) : Int;
	
	@:public @:static @:final public static var ATTIDX_ISRETURNED(default, null) : Int;
	
	@:protected @:static @:final private static var DT_ANYURI(default, null) : Int;
	
	@:protected @:static @:final private static var DT_ID(default, null) : Int;
	
	@:protected @:static @:final private static var DT_QNAME(default, null) : Int;
	
	@:protected @:static @:final private static var DT_STRING(default, null) : Int;
	
	@:protected @:static @:final private static var DT_TOKEN(default, null) : Int;
	
	@:protected @:static @:final private static var DT_NCNAME(default, null) : Int;
	
	@:protected @:static @:final private static var DT_XPATH(default, null) : Int;
	
	@:protected @:static @:final private static var DT_XPATH1(default, null) : Int;
	
	@:protected @:static @:final private static var DT_LANGUAGE(default, null) : Int;
	
	@:protected @:static @:final private static var DT_COUNT(default, null) : Int;
	
	@:protected @:static @:final private static var DT_BLOCK(default, null) : Int;
	
	@:protected @:static @:final private static var DT_BLOCK1(default, null) : Int;
	
	@:protected @:static @:final private static var DT_FINAL(default, null) : Int;
	
	@:protected @:static @:final private static var DT_FINAL1(default, null) : Int;
	
	@:protected @:static @:final private static var DT_FINAL2(default, null) : Int;
	
	@:protected @:static @:final private static var DT_FORM(default, null) : Int;
	
	@:protected @:static @:final private static var DT_MAXOCCURS(default, null) : Int;
	
	@:protected @:static @:final private static var DT_MAXOCCURS1(default, null) : Int;
	
	@:protected @:static @:final private static var DT_MEMBERTYPES(default, null) : Int;
	
	@:protected @:static @:final private static var DT_MINOCCURS1(default, null) : Int;
	
	@:protected @:static @:final private static var DT_NAMESPACE(default, null) : Int;
	
	@:protected @:static @:final private static var DT_PROCESSCONTENTS(default, null) : Int;
	
	@:protected @:static @:final private static var DT_USE(default, null) : Int;
	
	@:protected @:static @:final private static var DT_WHITESPACE(default, null) : Int;
	
	@:protected @:static @:final private static var DT_BOOLEAN(default, null) : Int;
	
	@:protected @:static @:final private static var DT_NONNEGINT(default, null) : Int;
	
	@:protected @:static @:final private static var DT_POSINT(default, null) : Int;
	
	@:protected private var fSchemaHandler : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDHandler;
	
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	@:protected private var fNonSchemaAttrs : java.util.Map<Dynamic, Dynamic>;
	
	@:protected private var fNamespaceList : java.util.Vector<Dynamic>;
	
	@:protected private var fSeen : java.NativeArray<Bool>;
	
	@:overload @:public public function new(schemaHandler : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDHandler) : Void;
	
	@:overload @:public public function reset(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* Check whether the specified element conforms to the attributes restriction
	* an array of attribute values is returned. the caller must call
	* <code>returnAttrArray</code> to return that array.
	*
	* @param element    which element to check
	* @param isGlobal   whether a child of &lt;schema&gt; or &lt;redefine&gt;
	* @param schemaDoc  the document where the element lives in
	* @return           an array containing attribute values
	*/
	@:overload @:public public function checkAttributes(element : org.w3c.dom.Element, isGlobal : Bool, schemaDoc : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo) : java.NativeArray<Dynamic>;
	
	/**
	* Check whether the specified element conforms to the attributes restriction
	* an array of attribute values is returned. the caller must call
	* <code>returnAttrArray</code> to return that array. This method also takes
	* an extra parameter: if the element is "enumeration", whether to make a
	* copy of the namespace context, so that the value can be resolved as a
	* QName later.
	*
	* @param element      which element to check
	* @param isGlobal     whether a child of &lt;schema&gt; or &lt;redefine&gt;
	* @param schemaDoc    the document where the element lives in
	* @param enumAsQName  whether to tread enumeration value as QName
	* @return             an array containing attribute values
	*/
	@:overload @:public public function checkAttributes(element : org.w3c.dom.Element, isGlobal : Bool, schemaDoc : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, enumAsQName : Bool) : java.NativeArray<Dynamic>;
	
	@:overload @:public public function checkNonSchemaAttributes(grammarBucket : com.sun.org.apache.xerces.internal.impl.xs.XSGrammarBucket) : Void;
	
	@:overload @:public @:static public static function normalize(content : String, ws : java.StdTypes.Int16) : String;
	
	@:overload @:protected private function getAvailableArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public public function returnAttrArray(attrArray : java.NativeArray<Dynamic>, schemaDoc : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo) : Void;
	
	@:overload @:public public function resolveNamespace(element : org.w3c.dom.Element, attrs : java.NativeArray<org.w3c.dom.Attr>, nsSupport : com.sun.org.apache.xerces.internal.impl.xs.SchemaNamespaceSupport) : Void;
	
	
}
@:internal extern class OneAttr
{
	@:public public var name : String;
	
	@:public public var dvIndex : Int;
	
	@:public public var valueIndex : Int;
	
	@:public public var dfltValue : Dynamic;
	
	@:overload @:public public function new(name : String, dvIndex : Int, valueIndex : Int, dfltValue : Dynamic) : Void;
	
	
}
@:internal extern class Container
{
	
}
@:internal extern class SmallContainer extends com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAttributeChecker.Container
{
	
}
@:internal extern class LargeContainer extends com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAttributeChecker.Container
{
	
}
