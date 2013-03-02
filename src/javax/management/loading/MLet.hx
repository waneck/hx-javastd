package javax.management.loading;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
//// Java import
extern class MLet extends java.net.URLClassLoader implements javax.management.loading.MLetMBean implements javax.management.MBeanRegistration implements java.io.Externalizable
{
	/**
	* Constructs a new MLet using the default delegation parent ClassLoader.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new MLet for the specified URLs using the default
	* delegation parent ClassLoader.  The URLs will be searched in
	* the order specified for classes and resources after first
	* searching in the parent class loader.
	*
	* @param  urls  The URLs from which to load classes and resources.
	*
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>) : Void;
	
	/**
	* Constructs a new MLet for the given URLs. The URLs will be
	* searched in the order specified for classes and resources
	* after first searching in the specified parent class loader.
	* The parent argument will be used as the parent class loader
	* for delegation.
	*
	* @param  urls  The URLs from which to load classes and resources.
	* @param  parent The parent class loader for delegation.
	*
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>, parent : java.lang.ClassLoader) : Void;
	
	/**
	* Constructs a new MLet for the specified URLs, parent class
	* loader, and URLStreamHandlerFactory. The parent argument will
	* be used as the parent class loader for delegation. The factory
	* argument will be used as the stream handler factory to obtain
	* protocol handlers when creating new URLs.
	*
	* @param  urls  The URLs from which to load classes and resources.
	* @param  parent The parent class loader for delegation.
	* @param  factory  The URLStreamHandlerFactory to use when creating URLs.
	*
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>, parent : java.lang.ClassLoader, factory : java.net.URLStreamHandlerFactory) : Void;
	
	/**
	* Constructs a new MLet for the specified URLs using the default
	* delegation parent ClassLoader.  The URLs will be searched in
	* the order specified for classes and resources after first
	* searching in the parent class loader.
	*
	* @param  urls  The URLs from which to load classes and resources.
	* @param  delegateToCLR  True if, when a class is not found in
	* either the parent ClassLoader or the URLs, the MLet should delegate
	* to its containing MBeanServer's {@link ClassLoaderRepository}.
	*
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>, delegateToCLR : Bool) : Void;
	
	/**
	* Constructs a new MLet for the given URLs. The URLs will be
	* searched in the order specified for classes and resources
	* after first searching in the specified parent class loader.
	* The parent argument will be used as the parent class loader
	* for delegation.
	*
	* @param  urls  The URLs from which to load classes and resources.
	* @param  parent The parent class loader for delegation.
	* @param  delegateToCLR  True if, when a class is not found in
	* either the parent ClassLoader or the URLs, the MLet should delegate
	* to its containing MBeanServer's {@link ClassLoaderRepository}.
	*
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>, parent : java.lang.ClassLoader, delegateToCLR : Bool) : Void;
	
	/**
	* Constructs a new MLet for the specified URLs, parent class
	* loader, and URLStreamHandlerFactory. The parent argument will
	* be used as the parent class loader for delegation. The factory
	* argument will be used as the stream handler factory to obtain
	* protocol handlers when creating new URLs.
	*
	* @param  urls  The URLs from which to load classes and resources.
	* @param  parent The parent class loader for delegation.
	* @param  factory  The URLStreamHandlerFactory to use when creating URLs.
	* @param  delegateToCLR  True if, when a class is not found in
	* either the parent ClassLoader or the URLs, the MLet should delegate
	* to its containing MBeanServer's {@link ClassLoaderRepository}.
	*
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>, parent : java.lang.ClassLoader, factory : java.net.URLStreamHandlerFactory, delegateToCLR : Bool) : Void;
	
	/**
	* Appends the specified URL to the list of URLs to search for classes and
	* resources.
	*/
	@:overload override public function addURL(url : java.net.URL) : Void;
	
	/**
	* Appends the specified URL to the list of URLs to search for classes and
	* resources.
	* @exception ServiceNotFoundException The specified URL is malformed.
	*/
	@:overload public function addURL(url : String) : Void;
	
	/** Returns the search path of URLs for loading classes and resources.
	* This includes the original list of URLs specified to the constructor,
	* along with any URLs subsequently appended by the addURL() method.
	*/
	@:overload override public function getURLs() : java.NativeArray<java.net.URL>;
	
	/**
	* Loads a text file containing MLET tags that define the MBeans to
	* be added to the MBean server. The location of the text file is specified by
	* a URL. The MBeans specified in the MLET file will be instantiated and
	* registered in the MBean server.
	*
	* @param url The URL of the text file to be loaded as URL object.
	*
	* @return  A set containing one entry per MLET tag in the m-let text file loaded.
	* Each entry specifies either the ObjectInstance for the created MBean, or a throwable object
	* (that is, an error or an exception) if the MBean could not be created.
	*
	* @exception ServiceNotFoundException One of the following errors has occurred: The m-let text file does
	* not contain an MLET tag, the m-let text file is not found, a mandatory
	* attribute of the MLET tag is not specified, the value of url is
	* null.
	* @exception IllegalStateException MLet MBean is not registered with an MBeanServer.
	*/
	@:overload public function getMBeansFromURL(url : java.net.URL) : java.util.Set<Dynamic>;
	
	/**
	* Loads a text file containing MLET tags that define the MBeans to
	* be added to the MBean server. The location of the text file is specified by
	* a URL. The MBeans specified in the MLET file will be instantiated and
	* registered in the MBean server.
	*
	* @param url The URL of the text file to be loaded as String object.
	*
	* @return A set containing one entry per MLET tag in the m-let
	* text file loaded.  Each entry specifies either the
	* ObjectInstance for the created MBean, or a throwable object
	* (that is, an error or an exception) if the MBean could not be
	* created.
	*
	* @exception ServiceNotFoundException One of the following
	* errors has occurred: The m-let text file does not contain an
	* MLET tag, the m-let text file is not found, a mandatory
	* attribute of the MLET tag is not specified, the url is
	* malformed.
	* @exception IllegalStateException MLet MBean is not registered
	* with an MBeanServer.
	*
	*/
	@:overload public function getMBeansFromURL(url : String) : java.util.Set<Dynamic>;
	
	/**
	* Gets the current directory used by the library loader for
	* storing native libraries before they are loaded into memory.
	*
	* @return The current directory used by the library loader.
	*
	* @see #setLibraryDirectory
	*
	* @throws UnsupportedOperationException if this implementation
	* does not support storing native libraries in this way.
	*/
	@:overload @:synchronized public function getLibraryDirectory() : String;
	
	/**
	* Sets the directory used by the library loader for storing
	* native libraries before they are loaded into memory.
	*
	* @param libdir The directory used by the library loader.
	*
	* @see #getLibraryDirectory
	*
	* @throws UnsupportedOperationException if this implementation
	* does not support storing native libraries in this way.
	*/
	@:overload @:synchronized public function setLibraryDirectory(libdir : String) : Void;
	
	/**
	* Allows the m-let to perform any operations it needs before
	* being registered in the MBean server. If the ObjectName is
	* null, the m-let provides a default name for its registration
	* &lt;defaultDomain&gt;:type=MLet
	*
	* @param server The MBean server in which the m-let will be registered.
	* @param name The object name of the m-let.
	*
	* @return  The name of the m-let registered.
	*
	* @exception java.lang.Exception This exception should be caught by the MBean server and re-thrown
	*as an MBeanRegistrationException.
	*/
	@:overload public function preRegister(server : javax.management.MBeanServer, name : javax.management.ObjectName) : javax.management.ObjectName;
	
	/**
	* Allows the m-let to perform any operations needed after having been
	* registered in the MBean server or after the registration has failed.
	*
	* @param registrationDone Indicates whether or not the m-let has
	* been successfully registered in the MBean server. The value
	* false means that either the registration phase has failed.
	*
	*/
	@:overload public function postRegister(registrationDone : Null<Bool>) : Void;
	
	/**
	* Allows the m-let to perform any operations it needs before being unregistered
	* by the MBean server.
	*
	* @exception java.langException This exception should be caught
	* by the MBean server and re-thrown as an
	* MBeanRegistrationException.
	*/
	@:overload public function preDeregister() : Void;
	
	/**
	* Allows the m-let to perform any operations needed after having been
	* unregistered in the MBean server.
	*/
	@:overload public function postDeregister() : Void;
	
	/**
	* <p>Save this MLet's contents to the given {@link ObjectOutput}.
	* Not all implementations support this method.  Those that do not
	* throw {@link UnsupportedOperationException}.  A subclass may
	* override this method to support it or to change the format of
	* the written data.</p>
	*
	* <p>The format of the written data is not specified, but if
	* an implementation supports {@link #writeExternal} it must
	* also support {@link #readExternal} in such a way that what is
	* written by the former can be read by the latter.</p>
	*
	* @param out The object output stream to write to.
	*
	* @exception IOException If a problem occurred while writing.
	* @exception UnsupportedOperationException If this
	* implementation does not support this operation.
	*/
	@:overload public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	/**
	* <p>Restore this MLet's contents from the given {@link ObjectInput}.
	* Not all implementations support this method.  Those that do not
	* throw {@link UnsupportedOperationException}.  A subclass may
	* override this method to support it or to change the format of
	* the read data.</p>
	*
	* <p>The format of the read data is not specified, but if an
	* implementation supports {@link #readExternal} it must also
	* support {@link #writeExternal} in such a way that what is
	* written by the latter can be read by the former.</p>
	*
	* @param in The object input stream to read from.
	*
	* @exception IOException if a problem occurred while reading.
	* @exception ClassNotFoundException if the class for the object
	* being restored cannot be found.
	* @exception UnsupportedOperationException if this
	* implementation does not support this operation.
	*/
	@:overload public function readExternal(_in : java.io.ObjectInput) : Void;
	
	/**
	* <p>Load a class, using the given {@link ClassLoaderRepository} if
	* the class is not found in this MLet's URLs.  The given
	* ClassLoaderRepository can be null, in which case a {@link
	* ClassNotFoundException} occurs immediately if the class is not
	* found in this MLet's URLs.</p>
	*
	* @param name The name of the class we want to load.
	* @param clr  The ClassLoaderRepository that will be used to search
	*             for the given class, if it is not found in this
	*             ClassLoader.  May be null.
	* @return The resulting Class object.
	* @exception ClassNotFoundException The specified class could not be
	*            found in this ClassLoader nor in the given
	*            ClassLoaderRepository.
	*
	*/
	@:overload @:synchronized public function loadClass(name : String, clr : javax.management.loading.ClassLoaderRepository) : Class<Dynamic>;
	
	/**
	* This is the main method for class loaders that is being redefined.
	*
	* @param name The name of the class.
	*
	* @return The resulting Class object.
	*
	* @exception ClassNotFoundException The specified class could not be
	*            found.
	*/
	@:overload override private function findClass(name : String) : Class<Dynamic>;
	
	/**
	* Returns the absolute path name of a native library. The VM
	* invokes this method to locate the native libraries that belong
	* to classes loaded with this class loader. Libraries are
	* searched in the JAR files using first just the native library
	* name and if not found the native library name together with
	* the architecture-specific path name
	* (<code>OSName/OSArch/OSVersion/lib/nativelibname</code>), i.e.
	* <p>
	* the library stat on Solaris SPARC 5.7 will be searched in the JAR file as:
	* <OL>
	* <LI>libstat.so
	* <LI>SunOS/sparc/5.7/lib/libstat.so
	* </OL>
	* the library stat on Windows NT 4.0 will be searched in the JAR file as:
	* <OL>
	* <LI>stat.dll
	* <LI>WindowsNT/x86/4.0/lib/stat.dll
	* </OL>
	*
	* <p>More specifically, let <em>{@code nativelibname}</em> be the result of
	* {@link System#mapLibraryName(java.lang.String)
	* System.mapLibraryName}{@code (libname)}.  Then the following names are
	* searched in the JAR files, in order:<br>
	* <em>{@code nativelibname}</em><br>
	* {@code <os.name>/<os.arch>/<os.version>/lib/}<em>{@code nativelibname}</em><br>
	* where {@code <X>} means {@code System.getProperty(X)} with any
	* spaces in the result removed, and {@code /} stands for the
	* file separator character ({@link File#separator}).
	* <p>
	* If this method returns <code>null</code>, i.e. the libraries
	* were not found in any of the JAR files loaded with this class
	* loader, the VM searches the library along the path specified
	* as the <code>java.library.path</code> property.
	*
	* @param libname The library name.
	*
	* @return The absolute path of the native library.
	*/
	@:overload private function findLibrary(libname : String) : String;
	
	/**
	* <p>This method is to be overridden when extending this service to
	* support caching and versioning.  It is called from {@link
	* #getMBeansFromURL getMBeansFromURL} when the version,
	* codebase, and jarfile have been extracted from the MLet file,
	* and can be used to verify that it is all right to load the
	* given MBean, or to replace the given URL with a different one.</p>
	*
	* <p>The default implementation of this method returns
	* <code>codebase</code> unchanged.</p>
	*
	* @param version The version number of the <CODE>.jar</CODE>
	* file stored locally.
	* @param codebase The base URL of the remote <CODE>.jar</CODE> file.
	* @param jarfile The name of the <CODE>.jar</CODE> file to be loaded.
	* @param mlet The <CODE>MLetContent</CODE> instance that
	* represents the <CODE>MLET</CODE> tag.
	*
	* @return the codebase to use for the loaded MBean.  The returned
	* value should not be null.
	*
	* @exception Exception if the MBean is not to be loaded for some
	* reason.  The exception will be added to the set returned by
	* {@link #getMBeansFromURL getMBeansFromURL}.
	*
	*/
	@:overload private function check(version : String, codebase : java.net.URL, jarfile : String, mlet : javax.management.loading.MLetContent) : java.net.URL;
	
	
}
