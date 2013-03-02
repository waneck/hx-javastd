package com.sun.xml.internal.xsom;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* Model group.
*
* @author
*  Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
*/
extern interface XSModelGroup extends com.sun.xml.internal.xsom.XSComponent extends com.sun.xml.internal.xsom.XSTerm extends java.lang.Iterable<com.sun.xml.internal.xsom.XSParticle>
{
	@:overload public function getCompositor() : com.sun.xml.internal.xsom.XSModelGroup.XSModelGroup_Compositor;
	
	/**
	* Gets <i>i</i>-ith child.
	*/
	@:overload public function getChild(idx : Int) : com.sun.xml.internal.xsom.XSParticle;
	
	/**
	* Gets the number of children.
	*/
	@:overload public function getSize() : Int;
	
	/**
	* Gets all the children in one array.
	*/
	@:overload public function getChildren() : java.NativeArray<com.sun.xml.internal.xsom.XSParticle>;
	
	
}
/**
* Type-safe enumeration for kind of model groups.
* Constants are defined in the {@link XSModelGroup} interface.
*/
@:native('com$sun$xml$internal$xsom$XSModelGroup$Compositor') extern enum XSModelGroup_Compositor
{
	ALL;
	CHOICE;
	SEQUENCE;
	
}

