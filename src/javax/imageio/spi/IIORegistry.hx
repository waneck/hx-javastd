package javax.imageio.spi;
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
extern class IIORegistry extends javax.imageio.spi.ServiceRegistry
{
	/**
	* Returns the default <code>IIORegistry</code> instance used by
	* the Image I/O API.  This instance should be used for all
	* registry functions.
	*
	* <p> Each <code>ThreadGroup</code> will receive its own
	* instance; this allows different <code>Applet</code>s in the
	* same browser (for example) to each have their own registry.
	*
	* @return the default registry for the current
	* <code>ThreadGroup</code>.
	*/
	@:overload public static function getDefaultInstance() : IIORegistry;
	
	/**
	* Registers all available service providers found on the
	* application class path, using the default
	* <code>ClassLoader</code>.  This method is typically invoked by
	* the <code>ImageIO.scanForPlugins</code> method.
	*
	* @see javax.imageio.ImageIO#scanForPlugins
	* @see ClassLoader#getResources
	*/
	@:overload public function registerApplicationClasspathSpis() : Void;
	
	
}
