package javax.swing.plaf.synth;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DefaultSynthStyleFactory extends javax.swing.plaf.synth.SynthStyleFactory
{
	/**
	* Used to indicate the lookup should be done based on Component name.
	*/
	@:public @:static @:final public static var NAME(default, null) : Int;
	
	/**
	* Used to indicate the lookup should be done based on region.
	*/
	@:public @:static @:final public static var REGION(default, null) : Int;
	
	@:overload @:public @:synchronized public function addStyle(style : sun.swing.plaf.synth.DefaultSynthStyle, path : String, type : Int) : Void;
	
	/**
	* Returns the style for the specified Component.
	*
	* @param c Component asking for
	* @param id ID of the Component
	*/
	@:overload @:public @:synchronized override public function getStyle(c : javax.swing.JComponent, id : javax.swing.plaf.synth.Region) : javax.swing.plaf.synth.SynthStyle;
	
	
}
