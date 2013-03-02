package java.nio.channels.spi;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AsynchronousChannelProvider
{
	/**
	* Initializes a new instance of this class.
	*
	* @throws  SecurityException
	*          If a security manager has been installed and it denies
	*          {@link RuntimePermission}<tt>("asynchronousChannelProvider")</tt>
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns the system-wide default asynchronous channel provider for this
	* invocation of the Java virtual machine.
	*
	* <p> The first invocation of this method locates the default provider
	* object as follows: </p>
	*
	* <ol>
	*
	*   <li><p> If the system property
	*   <tt>java.nio.channels.spi.AsynchronousChannelProvider</tt> is defined
	*   then it is taken to be the fully-qualified name of a concrete provider class.
	*   The class is loaded and instantiated; if this process fails then an
	*   unspecified error is thrown.  </p></li>
	*
	*   <li><p> If a provider class has been installed in a jar file that is
	*   visible to the system class loader, and that jar file contains a
	*   provider-configuration file named
	*   <tt>java.nio.channels.spi.AsynchronousChannelProvider</tt> in the resource
	*   directory <tt>META-INF/services</tt>, then the first class name
	*   specified in that file is taken.  The class is loaded and
	*   instantiated; if this process fails then an unspecified error is
	*   thrown.  </p></li>
	*
	*   <li><p> Finally, if no provider has been specified by any of the above
	*   means then the system-default provider class is instantiated and the
	*   result is returned.  </p></li>
	*
	* </ol>
	*
	* <p> Subsequent invocations of this method return the provider that was
	* returned by the first invocation.  </p>
	*
	* @return  The system-wide default AsynchronousChannel provider
	*/
	@:overload public static function provider() : java.nio.channels.spi.AsynchronousChannelProvider;
	
	/**
	* Constructs a new asynchronous channel group with a fixed thread pool.
	*
	* @param   nThreads
	*          The number of threads in the pool
	* @param   threadFactory
	*          The factory to use when creating new threads
	*
	* @throws  IllegalArgumentException
	*          If {@code nThreads <= 0}
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @see AsynchronousChannelGroup#withFixedThreadPool
	*/
	@:overload @:abstract public function openAsynchronousChannelGroup(nThreads : Int, threadFactory : java.util.concurrent.ThreadFactory) : java.nio.channels.AsynchronousChannelGroup;
	
	/**
	* Constructs a new asynchronous channel group with the given thread pool.
	*
	* @param   executor
	*          The thread pool
	* @param   initialSize
	*          A value {@code >=0} or a negative value for implementation
	*          specific default
	*
	* @throws  IOException
	*          If an I/O error occurs
	*
	* @see AsynchronousChannelGroup#withCachedThreadPool
	*/
	@:overload @:abstract public function openAsynchronousChannelGroup(executor : java.util.concurrent.ExecutorService, initialSize : Int) : java.nio.channels.AsynchronousChannelGroup;
	
	/**
	* Opens an asynchronous server-socket channel.
	*
	* @param   group
	*          The group to which the channel is bound, or {@code null} to
	*          bind to the default group
	*
	* @return  The new channel
	*
	* @throws  IllegalChannelGroupException
	*          If the provider that created the group differs from this provider
	* @throws  ShutdownChannelGroupException
	*          The group is shutdown
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:abstract public function openAsynchronousServerSocketChannel(group : java.nio.channels.AsynchronousChannelGroup) : java.nio.channels.AsynchronousServerSocketChannel;
	
	/**
	* Opens an asynchronous socket channel.
	*
	* @param   group
	*          The group to which the channel is bound, or {@code null} to
	*          bind to the default group
	*
	* @return  The new channel
	*
	* @throws  IllegalChannelGroupException
	*          If the provider that created the group differs from this provider
	* @throws  ShutdownChannelGroupException
	*          The group is shutdown
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:abstract public function openAsynchronousSocketChannel(group : java.nio.channels.AsynchronousChannelGroup) : java.nio.channels.AsynchronousSocketChannel;
	
	
}
@:native('java$nio$channels$spi$AsynchronousChannelProvider$ProviderHolder') @:internal extern class AsynchronousChannelProvider_ProviderHolder
{
	
}
