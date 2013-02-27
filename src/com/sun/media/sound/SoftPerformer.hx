package com.sun.media.sound;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class SoftPerformer
{
	public var keyFrom : Int;
	
	public var keyTo : Int;
	
	public var velFrom : Int;
	
	public var velTo : Int;
	
	public var exclusiveClass : Int;
	
	public var selfNonExclusive : Bool;
	
	public var forcedVelocity : Bool;
	
	public var forcedKeynumber : Bool;
	
	public var performer : com.sun.media.sound.ModelPerformer;
	
	public var connections : java.NativeArray<com.sun.media.sound.ModelConnectionBlock>;
	
	public var oscillators : java.NativeArray<com.sun.media.sound.ModelOscillator>;
	
	public var midi_rpn_connections : java.util.Map<Null<Int>, java.NativeArray<Int>>;
	
	public var midi_nrpn_connections : java.util.Map<Null<Int>, java.NativeArray<Int>>;
	
	public var midi_ctrl_connections : java.NativeArray<java.NativeArray<Int>>;
	
	public var midi_connections : java.NativeArray<java.NativeArray<Int>>;
	
	public var ctrl_connections : java.NativeArray<Int>;
	
	@:overload public function new(performer : com.sun.media.sound.ModelPerformer) : Void;
	
	
}
@:native('com$sun$media$sound$SoftPerformer$KeySortComparator') @:internal extern class SoftPerformer_KeySortComparator implements java.util.Comparator<com.sun.media.sound.ModelSource>
{
	@:overload public function compare(o1 : com.sun.media.sound.ModelSource, o2 : com.sun.media.sound.ModelSource) : Int;
	
	
}
