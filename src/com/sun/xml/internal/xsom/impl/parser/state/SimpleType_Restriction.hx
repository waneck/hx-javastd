package com.sun.xml.internal.xsom.impl.parser.state;
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
/* this file is generated by RelaxNGCC */
@:internal extern class SimpleType_Restriction extends com.sun.xml.internal.xsom.impl.parser.state.NGCCHandler
{
	private var $runtime(default, null) : com.sun.xml.internal.xsom.impl.parser.NGCCRuntimeEx;
	
	private var $uri : String;
	
	private var $localName : String;
	
	private var $qname : String;
	
	@:overload @:final override public function getRuntime() : com.sun.xml.internal.xsom.impl.parser.state.NGCCRuntime;
	
	@:overload public function new(parent : com.sun.xml.internal.xsom.impl.parser.state.NGCCHandler, source : com.sun.xml.internal.xsom.impl.parser.state.NGCCEventSource, runtime : com.sun.xml.internal.xsom.impl.parser.NGCCRuntimeEx, cookie : Int, _annotation : com.sun.xml.internal.xsom.impl.AnnotationImpl, _locator : org.xml.sax.Locator, _fa : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl, _name : String, _finalSet : java.util.Set<Dynamic>) : Void;
	
	@:overload public function new(runtime : com.sun.xml.internal.xsom.impl.parser.NGCCRuntimeEx, _annotation : com.sun.xml.internal.xsom.impl.AnnotationImpl, _locator : org.xml.sax.Locator, _fa : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl, _name : String, _finalSet : java.util.Set<Dynamic>) : Void;
	
	@:overload override public function enterElement($__uri : String, $__local : String, $__qname : String, $attrs : org.xml.sax.Attributes) : Void;
	
	@:overload override public function leaveElement($__uri : String, $__local : String, $__qname : String) : Void;
	
	@:overload override public function enterAttribute($__uri : String, $__local : String, $__qname : String) : Void;
	
	@:overload override public function leaveAttribute($__uri : String, $__local : String, $__qname : String) : Void;
	
	@:overload override public function text($value : String) : Void;
	
	@:overload override public function onChildCompleted($__result__ : Dynamic, $__cookie__ : Int, $__needAttCheck__ : Bool) : Void;
	
	@:overload public function accepted() : Bool;
	
	
}
