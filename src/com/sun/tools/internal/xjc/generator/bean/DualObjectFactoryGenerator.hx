package com.sun.tools.internal.xjc.generator.bean;
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
extern class DualObjectFactoryGenerator extends com.sun.tools.internal.xjc.generator.bean.ObjectFactoryGenerator
{
	/**
	* {@link ObjectFactoryGenerator} used when we generate
	* interfaces and implementations in separate packages.
	*
	* <p>
	* {@link #publicOFG} and {@link #privateOFG} gives you access to
	* {@code ObjectFactory}s in both packages, if you need to.
	*
	* @author Kohsuke Kawaguchi
	*/
	public var publicOFG(default, null) : com.sun.tools.internal.xjc.generator.bean.ObjectFactoryGenerator;
	
	public var privateOFG(default, null) : com.sun.tools.internal.xjc.generator.bean.ObjectFactoryGenerator;
	
	/**
	* Returns the private version (which is what gets used at runtime.)
	*/
	@:overload override public function getObjectFactory() : com.sun.codemodel.internal.JDefinedClass;
	
	
}
