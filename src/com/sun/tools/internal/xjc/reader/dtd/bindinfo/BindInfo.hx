package com.sun.tools.internal.xjc.reader.dtd.bindinfo;
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
extern class BindInfo
{
	/** Controller object that can be used to report errors. */
	@:protected @:final private var errorReceiver(default, null) : com.sun.tools.internal.xjc.ErrorReceiver;
	
	@:overload @:public public function new(model : com.sun.tools.internal.xjc.model.Model, source : org.xml.sax.InputSource, _errorReceiver : com.sun.tools.internal.xjc.ErrorReceiver) : Void;
	
	@:overload @:public public function new(model : com.sun.tools.internal.xjc.model.Model, _dom : org.w3c.dom.Document, _errorReceiver : com.sun.tools.internal.xjc.ErrorReceiver) : Void;
	
	/** Gets the serialVersionUID if it's turned on. */
	@:overload @:public public function getSerialVersionUID() : Null<haxe.Int64>;
	
	/** Gets the xjc:superClass customization if it's turned on. */
	@:overload @:public public function getSuperClass() : com.sun.codemodel.internal.JClass;
	
	/** Gets the xjc:superInterface customization if it's turned on. */
	@:overload @:public public function getSuperInterface() : com.sun.codemodel.internal.JClass;
	
	/**
	* Gets the specified package name (options/@package).
	*/
	@:overload @:public public function getTargetPackage() : com.sun.codemodel.internal.JPackage;
	
	/**
	* Gets the conversion declaration from the binding info.
	*
	* @return
	*        A non-null valid BIConversion object.
	*/
	@:overload @:public public function conversion(name : String) : com.sun.tools.internal.xjc.reader.dtd.bindinfo.BIConversion;
	
	/**
	* Gets the element declaration from the binding info.
	*
	* @return
	*        If there is no declaration with a given name,
	*        this method returns null.
	*/
	@:overload @:public public function element(name : String) : com.sun.tools.internal.xjc.reader.dtd.bindinfo.BIElement;
	
	/** Iterates all {@link BIElement}s in a read-only set. */
	@:overload @:public public function elements() : java.util.Collection<com.sun.tools.internal.xjc.reader.dtd.bindinfo.BIElement>;
	
	/** Returns all {@link BIInterface}s in a read-only set. */
	@:overload @:public public function interfaces() : java.util.Collection<com.sun.tools.internal.xjc.reader.dtd.bindinfo.BIInterface>;
	
	
}
