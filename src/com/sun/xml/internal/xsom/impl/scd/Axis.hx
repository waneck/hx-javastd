package com.sun.xml.internal.xsom.impl.scd;
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
extern interface Axis<T>
{
	/**
	* Axis of traversal.
	*
	* @param <T>
	*      The kind of components that this axis may return.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload public function iterator(contextNode : com.sun.xml.internal.xsom.XSComponent) : java.util.Iterator<T>;
	
	@:overload public function iterator(contextNodes : java.util.Iterator<com.sun.xml.internal.xsom.XSComponent>) : java.util.Iterator<T>;
	
	/**
	* Returns true if this is one of the model group axis.
	*/
	@:overload public function isModelGroup() : Bool;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$scd$Axis$ModelGroupAxis') @:internal extern class Axis_ModelGroupAxis extends com.sun.xml.internal.xsom.impl.scd.AbstractAxisImpl<com.sun.xml.internal.xsom.XSModelGroup>
{
	@:overload override public function isModelGroup() : Bool;
	
	@:overload override public function particle(particle : com.sun.xml.internal.xsom.XSParticle) : java.util.Iterator<com.sun.xml.internal.xsom.XSModelGroup>;
	
	@:overload override public function modelGroupDecl(decl : com.sun.xml.internal.xsom.XSModelGroupDecl) : java.util.Iterator<com.sun.xml.internal.xsom.XSModelGroup>;
	
	@:overload public function toString() : String;
	
	
}
