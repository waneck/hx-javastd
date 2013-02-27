package javax.management.loading;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface ClassLoaderRepository
{
	/**
	* <p>Load the given class name through the list of class loaders.
	* Each ClassLoader in turn from the ClassLoaderRepository is
	* asked to load the class via its {@link
	* ClassLoader#loadClass(String)} method.  If it successfully
	* returns a {@link Class} object, that is the result of this
	* method.  If it throws a {@link ClassNotFoundException}, the
	* search continues with the next ClassLoader.  If it throws
	* another exception, the exception is propagated from this
	* method.  If the end of the list is reached, a {@link
	* ClassNotFoundException} is thrown.</p>
	*
	* @param className The name of the class to be loaded.
	*
	* @return the loaded class.
	*
	* @exception ClassNotFoundException The specified class could not be
	*            found.
	*/
	@:overload public function loadClass(className : String) : Class<Dynamic>;
	
	/**
	* <p>Load the given class name through the list of class loaders,
	* excluding the given one.  Each ClassLoader in turn from the
	* ClassLoaderRepository, except <code>exclude</code>, is asked to
	* load the class via its {@link ClassLoader#loadClass(String)}
	* method.  If it successfully returns a {@link Class} object,
	* that is the result of this method.  If it throws a {@link
	* ClassNotFoundException}, the search continues with the next
	* ClassLoader.  If it throws another exception, the exception is
	* propagated from this method.  If the end of the list is
	* reached, a {@link ClassNotFoundException} is thrown.</p>
	*
	* <p>Be aware that if a ClassLoader in the ClassLoaderRepository
	* calls this method from its {@link ClassLoader#loadClass(String)
	* loadClass} method, it exposes itself to a deadlock if another
	* ClassLoader in the ClassLoaderRepository does the same thing at
	* the same time.  The {@link #loadClassBefore} method is
	* recommended to avoid the risk of deadlock.</p>
	*
	* @param className The name of the class to be loaded.
	* @param exclude The class loader to be excluded.  May be null,
	* in which case this method is equivalent to {@link #loadClass
	* loadClass(className)}.
	*
	* @return the loaded class.
	*
	* @exception ClassNotFoundException The specified class could not
	* be found.
	*/
	@:overload public function loadClassWithout(exclude : java.lang.ClassLoader, className : String) : Class<Dynamic>;
	
	/**
	* <p>Load the given class name through the list of class loaders,
	* stopping at the given one.  Each ClassLoader in turn from the
	* ClassLoaderRepository is asked to load the class via its {@link
	* ClassLoader#loadClass(String)} method.  If it successfully
	* returns a {@link Class} object, that is the result of this
	* method.  If it throws a {@link ClassNotFoundException}, the
	* search continues with the next ClassLoader.  If it throws
	* another exception, the exception is propagated from this
	* method.  If the search reaches <code>stop</code> or the end of
	* the list, a {@link ClassNotFoundException} is thrown.</p>
	*
	* <p>Typically this method is called from the {@link
	* ClassLoader#loadClass(String) loadClass} method of
	* <code>stop</code>, to consult loaders that appear before it
	* in the <code>ClassLoaderRepository</code>.  By stopping the
	* search as soon as <code>stop</code> is reached, a potential
	* deadlock with concurrent class loading is avoided.</p>
	*
	* @param className The name of the class to be loaded.
	* @param stop The class loader at which to stop.  May be null, in
	* which case this method is equivalent to {@link #loadClass(String)
	* loadClass(className)}.
	*
	* @return the loaded class.
	*
	* @exception ClassNotFoundException The specified class could not
	* be found.
	*
	*/
	@:overload public function loadClassBefore(stop : java.lang.ClassLoader, className : String) : Class<Dynamic>;
	
	
}
