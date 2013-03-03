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
extern class BIEnum extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.AbstractDeclarationImpl
{
	/** Gets the specified class name, or null if not specified. */
	@:public public var className : String;
	
	/**
	* @see BIClass#getExistingClassRef()
	*/
	@:public public var ref : String;
	
	/**
	* Gets the javadoc comment specified in the customization.
	* Can be null if none is specified.
	*/
	@:public @:final public var javadoc(default, null) : String;
	
	@:overload @:public public function isMapped() : Bool;
	
	/**
	* Gets the map that contains XML value->BIEnumMember pairs.
	* This table is built from &lt;enumMember> customizations.
	*
	* Always return non-null.
	*/
	@:public @:final public var members(default, null) : java.util.Map<String, com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIEnumMember>;
	
	@:overload @:public override public function getName() : javax.xml.namespace.QName;
	
	@:overload @:public override public function setParent(p : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo) : Void;
	
	/** Name of this declaration. */
	@:public @:static @:final public static var NAME(default, null) : javax.xml.namespace.QName;
	
	
}
/**
* {@link BIEnumMember} used inside {@link BIEnum} has additional 'value' attribute.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIEnum$BIEnumMember2') @:internal extern class BIEnum_BIEnumMember2 extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIEnumMember
{
	
}
