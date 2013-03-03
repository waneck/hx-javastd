package sun.font;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class StrikeCache
{
	@:overload @:public @:static public static function addGlyphDisposedListener(listener : sun.font.GlyphDisposedListener) : Void;
	
	@:overload @:public @:static public static function getStrikeRef(strike : sun.font.FontStrike) : java.lang.ref.Reference<Dynamic>;
	
	@:overload @:public @:static public static function getStrikeRef(strike : sun.font.FontStrike, weak : Bool) : java.lang.ref.Reference<Dynamic>;
	
	
}
@:native('sun$font$StrikeCache$DisposableStrike') @:internal extern interface StrikeCache_DisposableStrike
{
	@:overload public function getDisposer() : sun.font.FontStrikeDisposer;
	
	
}
@:native('sun$font$StrikeCache$SoftDisposerRef') @:internal extern class StrikeCache_SoftDisposerRef extends java.lang.ref.SoftReference<Dynamic> implements sun.font.StrikeCache.StrikeCache_DisposableStrike
{
	@:overload @:public public function getDisposer() : sun.font.FontStrikeDisposer;
	
	
}
@:native('sun$font$StrikeCache$WeakDisposerRef') @:internal extern class StrikeCache_WeakDisposerRef extends java.lang.ref.WeakReference<Dynamic> implements sun.font.StrikeCache.StrikeCache_DisposableStrike
{
	@:overload @:public public function getDisposer() : sun.font.FontStrikeDisposer;
	
	
}
