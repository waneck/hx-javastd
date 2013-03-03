package sun.nio.ch;
/*
* Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.
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
* An implementation of Selector for Solaris.
*/
@:internal extern class DevPollSelectorImpl extends sun.nio.ch.SelectorImpl
{
	@:protected private var fd0 : Int;
	
	@:protected private var fd1 : Int;
	
	@:overload @:protected override private function doSelect(timeout : haxe.Int64) : Int;
	
	@:overload @:protected override private function implClose() : Void;
	
	@:overload @:protected override private function implRegister(ski : sun.nio.ch.SelectionKeyImpl) : Void;
	
	@:overload @:protected override private function implDereg(ski : sun.nio.ch.SelectionKeyImpl) : Void;
	
	@:overload @:public override public function wakeup() : java.nio.channels.Selector;
	
	
}
