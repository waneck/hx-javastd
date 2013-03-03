package sun.swing.plaf.synth;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
* <b>WARNING:</b> This class is an implementation detail and is only
* public so that it can be used by two packages. You should NOT consider
* this public API.
* <p>
* StyleAssociation is used to lookup a style for a particular
* component (or region).
*
* @author Scott Violet
*/
extern class StyleAssociation
{
	/**
	* Returns a StyleAssociation that can be used to determine if
	* a particular string matches the returned association.
	*/
	@:overload @:public @:static public static function createStyleAssociation(text : String, style : javax.swing.plaf.synth.SynthStyle) : sun.swing.plaf.synth.StyleAssociation;
	
	/**
	* Returns a StyleAssociation that can be used to determine if
	* a particular string matches the returned association.
	*/
	@:overload @:public @:static public static function createStyleAssociation(text : String, style : javax.swing.plaf.synth.SynthStyle, id : Int) : sun.swing.plaf.synth.StyleAssociation;
	
	/**
	* Returns the developer specified identifier for this association, will
	* be <code>0</code> if an identifier was not specified when this
	* <code>StyleAssociation</code> was created.
	*/
	@:overload @:public public function getID() : Int;
	
	/**
	* Returns true if this <code>StyleAssociation</code> matches the
	* passed in CharSequence.
	*
	* @return true if this <code>StyleAssociation</code> matches the
	* passed in CharSequence.if this StyleAssociation.
	*/
	@:overload @:public @:synchronized public function matches(path : java.lang.CharSequence) : Bool;
	
	/**
	* Returns the text used in matching the string.
	*
	* @return the text used in matching the string.
	*/
	@:overload @:public public function getText() : String;
	
	/**
	* Returns the style this association is mapped to.
	*
	* @return the style this association is mapped to.
	*/
	@:overload @:public public function getStyle() : javax.swing.plaf.synth.SynthStyle;
	
	
}
