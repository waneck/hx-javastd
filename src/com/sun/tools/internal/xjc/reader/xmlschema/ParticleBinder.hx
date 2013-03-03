package com.sun.tools.internal.xjc.reader.xmlschema;
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
extern class ParticleBinder
{
	/**
	* Binds the content models of {@link XSParticle} as properties of the class that's being built.
	*
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:protected @:final private var builder(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.BGMBuilder;
	
	@:overload @:protected private function new() : Void;
	
	/**
	* Builds the {@link CPropertyInfo}s from the given particle
	* (and its descendants), and set them to the class returned by
	* {@link ClassSelector#getCurrentBean()}.
	*/
	@:overload @:public @:final public function build(p : com.sun.xml.internal.xsom.XSParticle) : Void;
	
	/**
	* The version of the build method that forces a specified set of particles
	* to become a property.
	*/
	@:overload @:public @:abstract public function build(p : com.sun.xml.internal.xsom.XSParticle, forcedProps : java.util.Collection<com.sun.xml.internal.xsom.XSParticle>) : Void;
	
	/**
	* Similar to the build method but this method only checks if
	* the BGM that will be built by the build method will
	* do the fallback (map all the properties into one list) or not.
	*
	* @return
	*      false if the fallback will not happen.
	*/
	@:overload @:public @:abstract public function checkFallback(p : com.sun.xml.internal.xsom.XSParticle) : Bool;
	
	@:overload @:protected @:final private function getCurrentBean() : com.sun.tools.internal.xjc.model.CClassInfo;
	
	/**
	* Gets the BIProperty object that applies to the given particle.
	*/
	@:overload @:protected @:final private function getLocalPropCustomization(p : com.sun.xml.internal.xsom.XSParticle) : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIProperty;
	
	@:overload @:protected @:final private function getLocalCustomization<T : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration>(p : com.sun.xml.internal.xsom.XSParticle, type : Class<T>) : T;
	
	/**
	* Computes the label of a given particle.
	* Usually, the getLabel method should be used instead.
	*/
	@:overload @:protected @:final private function computeLabel(p : com.sun.xml.internal.xsom.XSParticle) : String;
	
	/** Converts an XML name to the corresponding Java name. */
	@:overload @:protected @:final private function makeJavaName(isRepeated : Bool, xmlName : String) : String;
	
	@:overload @:protected @:final private function makeJavaName(p : com.sun.xml.internal.xsom.XSParticle, xmlName : String) : String;
	
	/**
	* Computes a name from unnamed model group by following the spec.
	*
	* Taking first three elements and combine them.
	*
	* @param repeated
	*      if the said model group is repeated more than once
	*
	* @exception ParseException
	*      If the method cannot generate a name. For example, when
	*      a model group doesn't contain any element reference/declaration
	*      at all.
	*/
	@:overload @:protected @:final private function getSpecDefaultName(mg : com.sun.xml.internal.xsom.XSModelGroup, repeated : Bool) : String;
	
	@:overload @:protected @:final private function getErrorReporter() : com.sun.tools.internal.xjc.reader.xmlschema.ErrorReporter;
	
	@:overload @:protected @:final private function getClassSelector() : com.sun.tools.internal.xjc.reader.xmlschema.ClassSelector;
	
	
}
