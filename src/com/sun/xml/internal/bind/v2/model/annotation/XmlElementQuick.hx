package com.sun.xml.internal.bind.v2.model.annotation;
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
@:internal extern class XmlElementQuick extends com.sun.xml.internal.bind.v2.model.annotation.Quick implements javax.xml.bind.annotation.XmlElement
{
	@:overload @:public public function new(upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable, core : javax.xml.bind.annotation.XmlElement) : Void;
	
	@:overload @:protected override private function getAnnotation() : java.lang.annotation.Annotation;
	
	@:overload @:protected override private function newInstance(upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable, core : java.lang.annotation.Annotation) : com.sun.xml.internal.bind.v2.model.annotation.Quick;
	
	@:overload @:public override public function annotationType() : Class<javax.xml.bind.annotation.XmlElement>;
	
	@:overload @:public public function name() : String;
	
	@:overload @:public public function type() : Class<Dynamic>;
	
	@:overload @:public public function namespace() : String;
	
	@:overload @:public public function defaultValue() : String;
	
	@:overload @:public public function required() : Bool;
	
	@:overload @:public public function nillable() : Bool;
	
	
}
