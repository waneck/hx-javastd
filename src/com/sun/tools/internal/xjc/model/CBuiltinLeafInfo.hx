package com.sun.tools.internal.xjc.model;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class CBuiltinLeafInfo extends com.sun.xml.internal.bind.v2.model.impl.BuiltinLeafInfoImpl<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass> implements com.sun.tools.internal.xjc.model.CNonElement
{
	/**
	* Gets the code model representation of this type.
	*/
	@:overload @:public public function toType(o : com.sun.tools.internal.xjc.outline.Outline, aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JType;
	
	/**
	* Since {@link CBuiltinLeafInfo} represents a default binding,
	* it is never a collection.
	*/
	@:overload @:public @:final public function isCollection() : Bool;
	
	/**
	* Guaranteed to return this.
	*/
	@:overload @:public public function getInfo() : com.sun.tools.internal.xjc.model.CNonElement;
	
	@:overload @:public public function idUse() : com.sun.xml.internal.bind.v2.model.core.ID;
	
	/**
	* {@link CBuiltinLeafInfo} never has a default associated MIME type.
	*/
	@:overload @:public public function getExpectedMimeType() : javax.activation.MimeType;
	
	@:overload @:public @:final public function getAdapterUse() : com.sun.tools.internal.xjc.model.CAdapter;
	
	@:overload @:public public function getLocator() : org.xml.sax.Locator;
	
	@:overload @:public @:final public function getSchemaComponent() : com.sun.xml.internal.xsom.XSComponent;
	
	/**
	* Creates a {@link TypeUse} that represents a collection of this {@link CBuiltinLeafInfo}.
	*/
	@:overload @:public @:final public function makeCollection() : com.sun.tools.internal.xjc.model.TypeUse;
	
	/**
	* Creates a {@link TypeUse} that represents an adapted use of this {@link CBuiltinLeafInfo}.
	*/
	@:overload @:public @:final public function makeAdapted(adapter : Class<javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>, copy : Bool) : com.sun.tools.internal.xjc.model.TypeUse;
	
	/**
	* Creates a {@link TypeUse} that represents a MIME-type assocaited version of this {@link CBuiltinLeafInfo}.
	*/
	@:overload @:public @:final public function makeMimeTyped(mt : javax.activation.MimeType) : com.sun.tools.internal.xjc.model.TypeUse;
	
	/**
	* All built-in leaves.
	*/
	@:public @:static @:final public static var LEAVES(default, null) : java.util.Map<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.CBuiltinLeafInfo>;
	
	@:public @:static @:final public static var ANYTYPE(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var STRING(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var BOOLEAN(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var INT(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var LONG(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var BYTE(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var SHORT(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var FLOAT(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var DOUBLE(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var QNAME(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var CALENDAR(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var DURATION(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var BIG_INTEGER(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var BIG_DECIMAL(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var BASE64_BYTE_ARRAY(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var DATA_HANDLER(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var IMAGE(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var XML_SOURCE(default, null) : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:public @:static @:final public static var HEXBIN_BYTE_ARRAY(default, null) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:public @:static @:final public static var TOKEN(default, null) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:public @:static @:final public static var NORMALIZED_STRING(default, null) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:public @:static @:final public static var ID(default, null) : com.sun.tools.internal.xjc.model.TypeUse;
	
	/**
	* boolean restricted to 0 or 1.
	*/
	@:public @:static @:final public static var BOOLEAN_ZERO_OR_ONE(default, null) : com.sun.tools.internal.xjc.model.TypeUse;
	
	/**
	* IDREF.
	*
	* IDREF is has a whitespace normalization semantics of token, but
	* we don't want {@link XmlJavaTypeAdapter} and {@link XmlIDREF} to interact.
	*/
	@:public @:static @:final public static var IDREF(default, null) : com.sun.tools.internal.xjc.model.TypeUse;
	
	/**
	* For all list of strings, such as NMTOKENS, ENTITIES.
	*/
	@:public @:static @:final public static var STRING_LIST(default, null) : com.sun.tools.internal.xjc.model.TypeUse;
	
	/**
	* Creates a constant for the given lexical value.
	*
	* <p>
	* For example, to create a constant 1 for <tt>xs:int</tt>, you'd do:
	* <pre>
	* CBuiltinLeafInfo.INT.createConstant( codeModel, "1", null );
	* </pre>
	*
	* <p>
	* This method is invoked at the backend as a part of the code generation process.
	*
	* @throws IllegalStateException
	*      if the type isn't bound to a text in XML.
	*
	* @return null
	*      if the constant cannot be created for this {@link TypeUse}
	*      (such as when it's a collection)
	*/
	@:overload @:public public function createConstant(outline : com.sun.tools.internal.xjc.outline.Outline, lexical : com.sun.xml.internal.xsom.XmlString) : com.sun.codemodel.internal.JExpression;
	
	/**
	* True if this type is a valid target from a property annotated with {@link XmlIDREF}.
	*/
	@:overload @:public override public function canBeReferencedByIDREF() : Bool;
	
	/**
	* Gets the location object that this object points to.
	*
	* This operation could be inefficient and costly.
	*/
	@:overload @:public override public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	/**
	* Gets the primary XML type ANYTYPE_NAME of the class.
	*
	* <p>
	* A Java type can be mapped to multiple XML types, but one of them is
	* considered "primary" and used when we generate a schema.
	*
	* @return
	*      null if the object doesn't have an explicit type ANYTYPE_NAME (AKA anonymous.)
	*/
	@:overload @:public override public function getTypeName() : javax.xml.namespace.QName;
	
	/**
	* Returns true if this {@link NonElement} maps to text in XML,
	* without any attribute nor child elements.
	*/
	@:overload @:public override public function isSimpleType() : Bool;
	
	/**
	* Gets the upstream {@link Location} information.
	*
	* @return
	*      can be null.
	*/
	@:overload @:public override public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	/**
	* Gets the underlying Java type that object represents.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public override public function getType() : Dynamic;
	
	/**
	* Gets the list of customizations attached to this model component.
	*
	* @return
	*      can be an empty list but never be null. The returned list is read-only.
	*      Do not modify.
	*
	* @see Plugin#getCustomizationURIs()
	*/
	@:overload @:public public function getCustomizations() : com.sun.tools.internal.xjc.model.CCustomizations;
	
	
}
/**
* {@link CBuiltinLeafInfo} for Java classes that have
* the spec defined built-in binding semantics.
*/
@:native('com$sun$tools$internal$xjc$model$CBuiltinLeafInfo$Builtin') @:internal extern class CBuiltinLeafInfo_Builtin extends com.sun.tools.internal.xjc.model.CBuiltinLeafInfo
{
	@:overload @:protected private function new(c : Class<Dynamic>, typeName : String) : Void;
	
	@:overload @:protected private function new(c : Class<Dynamic>, typeName : String, id : com.sun.xml.internal.bind.v2.model.core.ID) : Void;
	
	/**
	* No vendor customization in the built-in classes.
	*/
	@:overload @:public override public function getCustomizations() : com.sun.tools.internal.xjc.model.CCustomizations;
	
	
}
@:native('com$sun$tools$internal$xjc$model$CBuiltinLeafInfo$NoConstantBuiltin') @:internal extern class CBuiltinLeafInfo_NoConstantBuiltin extends com.sun.tools.internal.xjc.model.CBuiltinLeafInfo.CBuiltinLeafInfo_Builtin
{
	@:overload @:public public function new(c : Class<Dynamic>, typeName : String) : Void;
	
	@:overload @:public override public function createConstant(outline : com.sun.tools.internal.xjc.outline.Outline, lexical : com.sun.xml.internal.xsom.XmlString) : com.sun.codemodel.internal.JExpression;
	
	
}
