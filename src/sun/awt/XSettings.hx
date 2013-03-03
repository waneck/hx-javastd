package sun.awt;
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
extern class XSettings
{
	/**
	* Update these settings with <code>data</code> obtained from
	* XSETTINGS manager.
	*
	* @param data settings data obtained from
	*     <code>_XSETTINGS_SETTINGS</code> window property of the
	*     settings manager.
	* @return a <code>Map</code> of changed settings.
	*/
	@:overload @:public public function update(data : java.NativeArray<java.StdTypes.Int8>) : java.util.Map<Dynamic, Dynamic>;
	
	
}
/**
* TBS ...
*/
@:native('sun$awt$XSettings$Update') @:internal extern class XSettings_Update
{
	/**
	* Update settings.
	*/
	@:overload @:public public function update() : java.util.Map<Dynamic, Dynamic>;
	
	
}
