package com.sun.tools.internal.xjc.reader.xmlschema.bindinfo;
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
extern class BIGlobalBinding extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.AbstractDeclarationImpl
{
	/**
	* Gets the name converter that will govern the XML->Java
	* name conversion process for this compilation.
	*
	* <p>
	* The "underscoreBinding" customization will determine
	* the exact object returned from this method. The rest of XJC
	* should just use the NameConverter interface.
	*
	* <p>
	* Always non-null.
	*/
	public var nameConverter : com.sun.xml.internal.bind.api.impl.NameConverter;
	
	@:overload public function getSuperClass() : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload public function getSuperInterface() : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload public function getDefaultProperty() : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIProperty;
	
	@:overload public function isJavaNamingConventionEnabled() : Bool;
	
	@:overload public function getSerializable() : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BISerializable;
	
	@:overload public function isGenerateElementClass() : Bool;
	
	@:overload public function isGenerateMixedExtensions() : Bool;
	
	@:overload public function isChoiceContentPropertyEnabled() : Bool;
	
	@:overload public function getDefaultEnumMemberSizeCap() : Int;
	
	@:overload public function isSimpleMode() : Bool;
	
	@:overload public function isRestrictionFreshType() : Bool;
	
	@:overload public function getEnumMemberMode() : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.EnumMemberMode;
	
	@:overload public function isSimpleTypeSubstitution() : Bool;
	
	@:overload public function getCodeGenerationStrategy() : com.sun.tools.internal.xjc.generator.bean.ImplStructureStrategy;
	
	@:overload public function getFlattenClasses() : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.LocalScoping;
	
	/**
	* Performs error check
	*/
	@:overload public function errorCheck() : Void;
	
	@:overload override public function onSetOwner() : Void;
	
	/**
	* Creates a bind info object with the default values
	*/
	@:overload public function new() : Void;
	
	@:overload override public function setParent(parent : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo) : Void;
	
	/**
	* Moves global BIConversion to the right object.
	*/
	@:overload public function dispatchGlobalConversions(schema : com.sun.xml.internal.xsom.XSSchemaSet) : Void;
	
	/**
	* Checks if the given XML Schema built-in type can be mapped to
	* a type-safe enum class.
	*
	* @param typeName
	*/
	@:overload public function canBeMappedToTypeSafeEnum(typeName : javax.xml.namespace.QName) : Bool;
	
	@:overload public function canBeMappedToTypeSafeEnum(nsUri : String, localName : String) : Bool;
	
	@:overload public function canBeMappedToTypeSafeEnum(decl : com.sun.xml.internal.xsom.XSDeclaration) : Bool;
	
	@:overload override public function getName() : javax.xml.namespace.QName;
	
	public static var NAME(default, null) : javax.xml.namespace.QName;
	
	/* don't want to override equals to avoid overriding hashcode for this complex object, too */
	@:overload public function isEqual(b : BIGlobalBinding) : Bool;
	
	
}
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIGlobalBinding$UnderscoreBinding') privateextern enum BIGlobalBinding_UnderscoreBinding
{
	WORD_SEPARATOR;
	CHAR_IN_WORD;
	
}

@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIGlobalBinding$TypeSubstitutionElement') @:internal extern class BIGlobalBinding_TypeSubstitutionElement
{
	
}
/**
* Used to unmarshal
* <xmp>
* <[element] name="className" />
* </xmp>
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIGlobalBinding$ClassNameBean') @:internal extern class BIGlobalBinding_ClassNameBean
{
	
}
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIGlobalBinding$ClassNameAdapter') @:internal extern class BIGlobalBinding_ClassNameAdapter extends com.sun.tools.internal.xjc.util.ReadOnlyAdapter<BIGlobalBinding_ClassNameBean, String>
{
	@:overload public function unmarshal(bean : BIGlobalBinding_ClassNameBean) : String;
	
	
}
/**
* Global &lt;jaxb:javaType>.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIGlobalBinding$GlobalStandardConversion') @:internal extern class BIGlobalBinding_GlobalStandardConversion extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion.BIConversion_User
{
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
/**
* Global &lt;xjc:javaType>.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIGlobalBinding$GlobalVendorConversion') @:internal extern class BIGlobalBinding_GlobalVendorConversion extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion.BIConversion_UserAdapter
{
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
