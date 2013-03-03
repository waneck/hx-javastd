package javax.swing.plaf.basic;
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
* An ActionMap that populates its contents as necessary. The
* contents are populated by invoking the <code>loadActionMap</code>
* method on the passed in Object.
*
* @author Scott Violet
*/
@:internal extern class LazyActionMap extends javax.swing.plaf.ActionMapUIResource
{
	@:overload @:public public function put(action : javax.swing.Action) : Void;
	
	@:overload @:public override public function put(key : Dynamic, action : javax.swing.Action) : Void;
	
	@:overload @:public override public function get(key : Dynamic) : javax.swing.Action;
	
	@:overload @:public override public function remove(key : Dynamic) : Void;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function keys() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function allKeys() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function setParent(map : javax.swing.ActionMap) : Void;
	
	
}
