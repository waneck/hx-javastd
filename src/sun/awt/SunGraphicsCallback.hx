package sun.awt;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class SunGraphicsCallback
{
	public static var HEAVYWEIGHTS(default, null) : Int;
	
	public static var LIGHTWEIGHTS(default, null) : Int;
	
	public static var TWO_PASSES(default, null) : Int;
	
	@:overload @:abstract public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	@:overload private function constrainGraphics(g : java.awt.Graphics, bounds : java.awt.Rectangle) : Void;
	
	@:overload @:final public function runOneComponent(comp : java.awt.Component, bounds : java.awt.Rectangle, g : java.awt.Graphics, clip : java.awt.Shape, weightFlags : Int) : Void;
	
	@:overload @:final public function runComponents(comps : java.NativeArray<java.awt.Component>, g : java.awt.Graphics, weightFlags : Int) : Void;
	
	
}
@:native('sun$awt$SunGraphicsCallback$PaintHeavyweightComponentsCallback') extern class SunGraphicsCallback_PaintHeavyweightComponentsCallback extends SunGraphicsCallback
{
	@:overload override public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	@:overload public static function getInstance() : SunGraphicsCallback_PaintHeavyweightComponentsCallback;
	
	
}
@:native('sun$awt$SunGraphicsCallback$PrintHeavyweightComponentsCallback') extern class SunGraphicsCallback_PrintHeavyweightComponentsCallback extends SunGraphicsCallback
{
	@:overload override public function run(comp : java.awt.Component, cg : java.awt.Graphics) : Void;
	
	@:overload public static function getInstance() : SunGraphicsCallback_PrintHeavyweightComponentsCallback;
	
	
}
