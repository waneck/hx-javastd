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
extern class BIFactoryMethod extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.AbstractDeclarationImpl
{
	/**
	* Controls the <tt>ObjectFactory</tt> method name.
	*
	* @author Kohsuke Kawaguchi
	*/
	public var name : String;
	
	/**
	* If the given component has {@link BIInlineBinaryData} customization,
	* reflect that to the specified property.
	*/
	@:overload public static function handle(source : com.sun.xml.internal.xsom.XSComponent, prop : com.sun.tools.internal.xjc.model.CPropertyInfo) : Void;
	
	@:overload @:final override public function getName() : javax.xml.namespace.QName;
	
	/** Name of the declaration. */
	public static var NAME(default, null) : javax.xml.namespace.QName;
	
	
}
