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
extern class BIClass extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.AbstractDeclarationImpl
{
	/**
	* Class declaration.
	*
	* This customization turns arbitrary schema component into a Java
	* content interface.
	*
	* <p>
	* This customization is acknowledged by the ClassSelector.
	*
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Gets the specified class name, or null if not specified.
	* (Not a fully qualified name.)
	*
	* @return
	*      Returns a class name. The caller should <em>NOT</em>
	*      apply XML-to-Java name conversion to the name
	*      returned from this method.
	*/
	@:overload @:public public function getClassName() : String;
	
	/**
	* Gets the fully qualified name of the
	* user-specified implementation class, if any.
	* Or null.
	*/
	@:overload @:public public function getUserSpecifiedImplClass() : String;
	
	/**
	* Reference to the existing class, or null.
	* Fully qualified name.
	*
	* <p>
	* Caller needs to perform error check on this.
	*/
	@:overload @:public public function getExistingClassRef() : String;
	
	@:overload @:public public function getRecursive() : String;
	
	/**
	* Gets the javadoc comment specified in the customization.
	* Can be null if none is specified.
	*/
	@:overload @:public public function getJavadoc() : String;
	
	@:overload @:public override public function getName() : javax.xml.namespace.QName;
	
	@:overload @:public override public function setParent(p : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo) : Void;
	
	/** Name of this declaration. */
	@:public @:static @:final public static var NAME(default, null) : javax.xml.namespace.QName;
	
	
}
