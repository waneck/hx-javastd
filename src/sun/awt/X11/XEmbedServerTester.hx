package sun.awt.X11;
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
////import static sun.awt.X11.XEmbed.*;
extern class XEmbedServerTester implements sun.awt.X11.XEventDispatcher
{
	@:overload public static function getTester(serverBounds : java.NativeArray<java.awt.Rectangle>, parent : haxe.Int64) : XEmbedServerTester;
	
	@:overload public function test1_1() : Void;
	
	@:overload public function test1_2() : Void;
	
	@:overload public function test1_3() : Void;
	
	@:overload public function test1_4() : Void;
	
	@:overload public function test1_5() : Void;
	
	@:overload public function test1_6() : Void;
	
	@:overload public function test1_7() : Void;
	
	@:overload public function test2_5() : Void;
	
	@:overload public function test2_6() : Void;
	
	@:overload public function test3_1() : Void;
	
	@:overload public function test3_3() : Void;
	
	@:overload public function test3_4() : Void;
	
	@:overload public function test3_5() : Void;
	
	@:overload public function test3_6() : Void;
	
	@:overload public function test4_1() : Void;
	
	@:overload public function test4_2() : Void;
	
	@:overload public function test4_3() : Void;
	
	@:overload public function test4_4() : Void;
	
	@:overload public function test6_1_1() : Void;
	
	@:overload public function test6_1_2() : Void;
	
	@:overload public function test6_1_3() : Void;
	
	@:overload public function test6_1_4() : Void;
	
	@:overload public function test6_2_1() : Void;
	
	@:overload public function test6_2_2() : Void;
	
	@:overload public function test6_2_3() : Void;
	
	@:overload public function test6_2_4() : Void;
	
	@:overload public function test7_1() : Void;
	
	@:overload public function test7_2() : Void;
	
	@:overload public function test9_1() : Void;
	
	@:overload public function dispatchEvent(ev : sun.awt.X11.XEvent) : Void;
	
	
}
