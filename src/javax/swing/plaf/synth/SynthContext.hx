package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
* An immutable transient object containing contextual information about
* a <code>Region</code>. A <code>SynthContext</code> should only be
* considered valid for the duration
* of the method it is passed to. In other words you should not cache
* a <code>SynthContext</code> that is passed to you and expect it to
* remain valid.
*
* @since 1.5
* @author Scott Violet
*/
@:require(java5) extern class SynthContext
{
	/**
	* Creates a SynthContext with the specified values. This is meant
	* for subclasses and custom UI implementors. You very rarely need to
	* construct a SynthContext, though some methods will take one.
	*
	* @param component JComponent
	* @param region Identifies the portion of the JComponent
	* @param style Style associated with the component
	* @param state State of the component as defined in SynthConstants.
	* @throws NullPointerException if component, region of style is null.
	*/
	@:overload @:public public function new(component : javax.swing.JComponent, region : javax.swing.plaf.synth.Region, style : javax.swing.plaf.synth.SynthStyle, state : Int) : Void;
	
	/**
	* Returns the hosting component containing the region.
	*
	* @return Hosting Component
	*/
	@:overload @:public public function getComponent() : javax.swing.JComponent;
	
	/**
	* Returns the Region identifying this state.
	*
	* @return Region of the hosting component
	*/
	@:overload @:public public function getRegion() : javax.swing.plaf.synth.Region;
	
	/**
	* Returns the style associated with this Region.
	*
	* @return SynthStyle associated with the region.
	*/
	@:overload @:public public function getStyle() : javax.swing.plaf.synth.SynthStyle;
	
	/**
	* Returns the state of the widget, which is a bitmask of the
	* values defined in <code>SynthConstants</code>. A region will at least
	* be in one of
	* <code>ENABLED</code>, <code>MOUSE_OVER</code>, <code>PRESSED</code>
	* or <code>DISABLED</code>.
	*
	* @see SynthConstants
	* @return State of Component
	*/
	@:overload @:public public function getComponentState() : Int;
	
	
}
