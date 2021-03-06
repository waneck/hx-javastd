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
extern class ModelPerformer
{
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function setName(name : String) : Void;
	
	@:overload @:public public function getConnectionBlocks() : java.util.List<com.sun.media.sound.ModelConnectionBlock>;
	
	@:overload @:public public function setConnectionBlocks(connectionBlocks : java.util.List<com.sun.media.sound.ModelConnectionBlock>) : Void;
	
	@:overload @:public public function getOscillators() : java.util.List<com.sun.media.sound.ModelOscillator>;
	
	@:overload @:public public function getExclusiveClass() : Int;
	
	@:overload @:public public function setExclusiveClass(exclusiveClass : Int) : Void;
	
	@:overload @:public public function isSelfNonExclusive() : Bool;
	
	@:overload @:public public function setSelfNonExclusive(selfNonExclusive : Bool) : Void;
	
	@:overload @:public public function getKeyFrom() : Int;
	
	@:overload @:public public function setKeyFrom(keyFrom : Int) : Void;
	
	@:overload @:public public function getKeyTo() : Int;
	
	@:overload @:public public function setKeyTo(keyTo : Int) : Void;
	
	@:overload @:public public function getVelFrom() : Int;
	
	@:overload @:public public function setVelFrom(velFrom : Int) : Void;
	
	@:overload @:public public function getVelTo() : Int;
	
	@:overload @:public public function setVelTo(velTo : Int) : Void;
	
	@:overload @:public public function isReleaseTriggered() : Bool;
	
	@:overload @:public public function setReleaseTriggered(value : Bool) : Void;
	
	@:overload @:public public function getUserObject() : Dynamic;
	
	@:overload @:public public function setUserObject(object : Dynamic) : Void;
	
	@:overload @:public public function isDefaultConnectionsEnabled() : Bool;
	
	@:overload @:public public function setDefaultConnectionsEnabled(addDefaultConnections : Bool) : Void;
	
	
}
