package com.sun.java.swing.plaf.gtk;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GTKStyleFactory extends javax.swing.plaf.synth.SynthStyleFactory
{
	/**
	* Returns the <code>GTKStyle</code> to use based on the
	* <code>Region</code> id
	*
	* @param c this parameter isn't used, may be null.
	* @param id of the region to get the style.
	*/
	@:overload @:public @:synchronized override public function getStyle(c : javax.swing.JComponent, id : javax.swing.plaf.synth.Region) : javax.swing.plaf.synth.SynthStyle;
	
	
}
/**
* Represents a hash key used for fetching GTKStyle objects from the
* cache.  In most cases only the WidgetType is used for lookup, but
* in some complex cases, other Object arguments can be specified
* via a ComplexKey to differentiate the various styles.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKStyleFactory$ComplexKey') @:internal extern class GTKStyleFactory_ComplexKey
{
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function toString() : String;
	
	
}
