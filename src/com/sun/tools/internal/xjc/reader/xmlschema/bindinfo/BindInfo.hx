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
extern class BindInfo implements java.lang.Iterable<com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration>
{
	/**
	* Returns true if this {@link BindInfo} doesn't contain any useful
	* information.
	*
	* This flag is used to discard unused {@link BindInfo}s early to save memory footprint.
	*/
	@:overload @:public public function isPointless() : Bool;
	
	/**
	* Gets the location of this annotation in the source file.
	*
	* @return
	*      If the declarations are in fact specified in the source
	*      code, a non-null valid object will be returned.
	*      If this BindInfo is generated internally by XJC, then
	*      null will be returned.
	*/
	@:overload @:public public function getSourceLocation() : org.xml.sax.Locator;
	
	/**
	* Sets the owner schema component and a reference to BGMBuilder.
	* This method is called from the BGMBuilder before
	* any BIDeclaration inside it is used.
	*/
	@:overload @:public public function setOwner(_builder : com.sun.tools.internal.xjc.reader.xmlschema.BGMBuilder, _owner : com.sun.xml.internal.xsom.XSComponent) : Void;
	
	@:overload @:public public function getOwner() : com.sun.xml.internal.xsom.XSComponent;
	
	/**
	* Back pointer to the BGMBuilder which is building
	* a BGM from schema components including this customization.
	*/
	@:overload @:public public function getBuilder() : com.sun.tools.internal.xjc.reader.xmlschema.BGMBuilder;
	
	/** Adds a new declaration. */
	@:overload @:public public function addDecl(decl : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration) : Void;
	
	/**
	* Gets the first declaration with a given name, or null
	* if none is found.
	*/
	@:overload @:public public function get<T : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration>(kind : Class<T>) : T;
	
	/**
	* Gets all the declarations
	*/
	@:overload @:public public function getDecls() : java.NativeArray<com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration>;
	
	/**
	* Gets the documentation parsed from &lt;xs:documentation>s.
	* The returned collection is to be added to {@link JDocComment#append(Object)}.
	* @return  maybe null.
	*/
	@:overload @:public public function getDocumentation() : String;
	
	/**
	* Merges all the declarations inside the given BindInfo
	* to this BindInfo.
	*/
	@:overload @:public public function absorb(bi : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo) : Void;
	
	/** Gets the number of declarations. */
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function get(idx : Int) : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration;
	
	@:overload @:public public function iterator() : java.util.Iterator<com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration>;
	
	/**
	* Gets the list of {@link CPluginCustomization}s from this.
	*
	* <p>
	* Note that calling this method marks all those plug-in customizations
	* as 'used'. So call it only when it's really necessary.
	*/
	@:overload @:public public function toCustomizationList() : com.sun.tools.internal.xjc.model.CCustomizations;
	
	/** An instance with the empty contents. */
	@:public @:final @:static public static var empty(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo;
	
	@:overload @:public @:static public static function getJAXBContext() : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl;
	
	/**
	* Lazily parsed schema for the binding file.
	*/
	@:public @:static @:final public static var bindingFileSchema(default, null) : com.sun.tools.internal.xjc.SchemaCache;
	
	
}
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BindInfo$Documentation') @:internal extern class BindInfo_Documentation
{
	
}
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BindInfo$AppInfo') @:internal extern class BindInfo_AppInfo
{
	@:overload @:public public function addTo(bi : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo) : Void;
	
	
}
