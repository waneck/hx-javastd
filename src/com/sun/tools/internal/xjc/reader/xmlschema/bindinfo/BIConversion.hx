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
extern class BIConversion extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.AbstractDeclarationImpl
{
	/**
	* Conversion declaration.
	*
	* <p>
	* A conversion declaration specifies how an XML type gets mapped
	* to a Java type.
	*
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:overload @:public public function new(loc : org.xml.sax.Locator) : Void;
	
	@:overload @:protected private function new() : Void;
	
	/**
	* Gets the {@link TypeUse} object that this conversion represents.
	* <p>
	* The returned {@link TypeUse} object is properly adapted.
	*
	* @param owner
	*      A {@link BIConversion} is always associated with one
	*      {@link XSSimpleType}, but that's not always available
	*      when a {@link BIConversion} is built. So we pass this
	*      as a parameter to this method.
	*/
	@:overload @:public @:abstract public function getTypeUse(owner : com.sun.xml.internal.xsom.XSSimpleType) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public override public function getName() : javax.xml.namespace.QName;
	
	/** Name of the conversion declaration. */
	@:public @:static @:final public static var NAME(default, null) : javax.xml.namespace.QName;
	
	
}
/**
* Implementation that returns a statically-determined constant {@link TypeUse}.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIConversion$Static') extern class BIConversion_Static extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion
{
	@:overload @:public public function new(loc : org.xml.sax.Locator, transducer : com.sun.tools.internal.xjc.model.TypeUse) : Void;
	
	@:overload @:public override public function getTypeUse(owner : com.sun.xml.internal.xsom.XSSimpleType) : com.sun.tools.internal.xjc.model.TypeUse;
	
	
}
/**
* User-specified &lt;javaType> customization.
*
* The parse/print methods are allowed to be null,
* and their default values are determined based on the
* owner of the token.
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIConversion$User') extern class BIConversion_User extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion
{
	@:overload @:public public function new(loc : org.xml.sax.Locator, parseMethod : String, printMethod : String, inMemoryType : com.sun.codemodel.internal.JType) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getTypeUse(owner : com.sun.xml.internal.xsom.XSSimpleType) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public override public function getName() : javax.xml.namespace.QName;
	
	/** Name of the conversion declaration. */
	@:public @:static @:final public static var NAME(default, null) : javax.xml.namespace.QName;
	
	
}
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIConversion$UserAdapter') extern class BIConversion_UserAdapter extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion
{
	@:overload @:public override public function getTypeUse(owner : com.sun.xml.internal.xsom.XSSimpleType) : com.sun.tools.internal.xjc.model.TypeUse;
	
	
}
