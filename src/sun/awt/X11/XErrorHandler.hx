package sun.awt.X11;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class XErrorHandler
{
	/*
	* Called under AWT lock
	*/
	@:overload @:abstract public function handleError(display : haxe.Int64, err : sun.awt.X11.XErrorEvent) : Int;
	
	
}
/*
* Forwards all the errors to saved error handler (which was
* set before XToolkit had been initialized).
*/
@:native('sun$awt$X11$XErrorHandler$XBaseErrorHandler') extern class XErrorHandler_XBaseErrorHandler extends XErrorHandler
{
	@:overload override public function handleError(display : haxe.Int64, err : sun.awt.X11.XErrorEvent) : Int;
	
	
}
/*
* Instead of validating window id, we simply call XGetWindowProperty,
* but temporary install this function as the error handler to ignore
* BadWindow error.
*/
@:native('sun$awt$X11$XErrorHandler$IgnoreBadWindowHandler') extern class XErrorHandler_IgnoreBadWindowHandler extends XErrorHandler_XBaseErrorHandler
{
	@:overload override public function handleError(display : haxe.Int64, err : sun.awt.X11.XErrorEvent) : Int;
	
	@:overload public static function getInstance() : XErrorHandler_IgnoreBadWindowHandler;
	
	
}
@:native('sun$awt$X11$XErrorHandler$VerifyChangePropertyHandler') extern class XErrorHandler_VerifyChangePropertyHandler extends XErrorHandler_XBaseErrorHandler
{
	@:overload override public function handleError(display : haxe.Int64, err : sun.awt.X11.XErrorEvent) : Int;
	
	@:overload public static function getInstance() : XErrorHandler_VerifyChangePropertyHandler;
	
	
}
