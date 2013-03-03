package sun.awt.geom;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class AreaOp
{
	/* Constants to tag the left and right curves in the edge list */
	@:public @:static @:final public static var CTAG_LEFT(default, null) : Int;
	
	@:public @:static @:final public static var CTAG_RIGHT(default, null) : Int;
	
	/* Constants to classify edges */
	@:public @:static @:final public static var ETAG_IGNORE(default, null) : Int;
	
	@:public @:static @:final public static var ETAG_ENTER(default, null) : Int;
	
	@:public @:static @:final public static var ETAG_EXIT(default, null) : Int;
	
	/* Constants used to classify result state */
	@:public @:static @:final public static var RSTAG_INSIDE(default, null) : Int;
	
	@:public @:static @:final public static var RSTAG_OUTSIDE(default, null) : Int;
	
	@:overload @:public @:abstract public function newRow() : Void;
	
	@:overload @:public @:abstract public function classify(e : sun.awt.geom.Edge) : Int;
	
	@:overload @:public @:abstract public function getState() : Int;
	
	@:overload @:public public function calculate(left : java.util.Vector<Dynamic>, right : java.util.Vector<Dynamic>) : java.util.Vector<Dynamic>;
	
	@:overload @:public @:static public static function finalizeSubCurves(subcurves : java.util.Vector<Dynamic>, chains : java.util.Vector<Dynamic>) : Void;
	
	@:overload @:public @:static public static function resolveLinks(subcurves : java.util.Vector<Dynamic>, chains : java.util.Vector<Dynamic>, links : java.util.Vector<Dynamic>) : Void;
	
	/*
	* Does the position of the next edge at v1 "obstruct" the
	* connectivity between current edge and the potential
	* partner edge which is positioned at v2?
	*
	* Phase tells us whether we are testing for a transition
	* into or out of the interior part of the resulting area.
	*
	* Require 4-connected continuity if this edge and the partner
	* edge are both "entering into" type edges
	* Allow 8-connected continuity for "exiting from" type edges
	*/
	@:overload @:public @:static public static function obstructs(v1 : Float, v2 : Float, phase : Int) : Bool;
	
	
}
@:native('sun$awt$geom$AreaOp$CAGOp') extern class AreaOp_CAGOp extends sun.awt.geom.AreaOp
{
	@:overload @:public override public function newRow() : Void;
	
	@:overload @:public override public function classify(e : sun.awt.geom.Edge) : Int;
	
	@:overload @:public override public function getState() : Int;
	
	@:overload @:public @:abstract public function newClassification(inLeft : Bool, inRight : Bool) : Bool;
	
	
}
@:native('sun$awt$geom$AreaOp$AddOp') extern class AreaOp_AddOp extends sun.awt.geom.AreaOp.AreaOp_CAGOp
{
	@:overload @:public override public function newClassification(inLeft : Bool, inRight : Bool) : Bool;
	
	
}
@:native('sun$awt$geom$AreaOp$SubOp') extern class AreaOp_SubOp extends sun.awt.geom.AreaOp.AreaOp_CAGOp
{
	@:overload @:public override public function newClassification(inLeft : Bool, inRight : Bool) : Bool;
	
	
}
@:native('sun$awt$geom$AreaOp$IntOp') extern class AreaOp_IntOp extends sun.awt.geom.AreaOp.AreaOp_CAGOp
{
	@:overload @:public override public function newClassification(inLeft : Bool, inRight : Bool) : Bool;
	
	
}
@:native('sun$awt$geom$AreaOp$XorOp') extern class AreaOp_XorOp extends sun.awt.geom.AreaOp.AreaOp_CAGOp
{
	@:overload @:public override public function newClassification(inLeft : Bool, inRight : Bool) : Bool;
	
	
}
@:native('sun$awt$geom$AreaOp$NZWindOp') extern class AreaOp_NZWindOp extends sun.awt.geom.AreaOp
{
	@:overload @:public override public function newRow() : Void;
	
	@:overload @:public override public function classify(e : sun.awt.geom.Edge) : Int;
	
	@:overload @:public override public function getState() : Int;
	
	
}
@:native('sun$awt$geom$AreaOp$EOWindOp') extern class AreaOp_EOWindOp extends sun.awt.geom.AreaOp
{
	@:overload @:public override public function newRow() : Void;
	
	@:overload @:public override public function classify(e : sun.awt.geom.Edge) : Int;
	
	@:overload @:public override public function getState() : Int;
	
	
}
