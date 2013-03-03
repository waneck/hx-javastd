package sun.java2d;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* The SurfaceManagerFactory that creates VolatileSurfaceManager
* implementations for the Unix volatile images.
*/
extern class UnixSurfaceManagerFactory extends sun.java2d.SurfaceManagerFactory
{
	/**
	* Creates a new instance of a VolatileSurfaceManager given any
	* arbitrary SunVolatileImage.  An optional context Object can be supplied
	* as a way for the caller to pass pipeline-specific context data to
	* the VolatileSurfaceManager (such as a backbuffer handle, for example).
	*
	* For Unix platforms, this method returns either an X11- or a GLX-
	* specific VolatileSurfaceManager based on the GraphicsConfiguration
	* under which the SunVolatileImage was created.
	*/
	@:overload @:public override public function createVolatileManager(vImg : sun.awt.image.SunVolatileImage, context : Dynamic) : sun.awt.image.VolatileSurfaceManager;
	
	
}
