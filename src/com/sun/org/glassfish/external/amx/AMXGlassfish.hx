package com.sun.org.glassfish.external.amx;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AMXGlassfish
{
	/**
	* AMX behavior specific to Glassfish V3.
	*/
	public static var DEFAULT_JMX_DOMAIN(default, null) : String;
	
	/** Default domain support */
	public static var DEFAULT(default, null) : com.sun.org.glassfish.external.amx.AMXGlassfish;
	
	/** Anything other than {@link #DEFAULT} is not supported in Glassfish V3 */
	@:overload public function new(jmxDomain : String) : Void;
	
	/** Return a version string, or null if not running in Glassfish */
	@:overload public static function getGlassfishVersion() : String;
	
	/** JMX domain used by AMX MBeans.
	* <p>
	* All MBeans in this domain must be AMX-compliant, see http://tinyurl.com/nryoqp =
	https://glassfish.dev.java.net/nonav/v3/admin/planning/V3Changes/V3_AMX_SPI.html
	*/
	@:overload public function amxJMXDomain() : String;
	
	/** JMX domain used by AMX support MBeans.  Private use only */
	@:overload public function amxSupportDomain() : String;
	
	/** name of the Domain Admin Server (DAS) as found in an ObjectName */
	@:overload public function dasName() : String;
	
	/** name of the Domain Admin Server (DAS) &lt;config> */
	@:overload public function dasConfig() : String;
	
	/** return the ObjectName of the AMX DomainRoot MBean */
	@:overload public function domainRoot() : javax.management.ObjectName;
	
	/** ObjectName for top-level monitoring MBean (parent of those for each server) */
	@:overload public function monitoringRoot() : javax.management.ObjectName;
	
	/** ObjectName for top-level monitoring MBean for specified server */
	@:overload public function serverMon(serverName : String) : javax.management.ObjectName;
	
	/** ObjectName for top-level monitoring MBean for the DAS. */
	@:overload public function serverMonForDAS() : javax.management.ObjectName;
	
	/** Make a new AMX ObjectName with unchecked exception.
	*  name must be null to create a singleton ObjectName.
	*  Note that the arguments must not contain the characters
	* @param pp The parent part
	* @param type The ObjectName type
	* @param name The ObjectName name
	* @return The objectname with pp, type, and (optionally) name.
	*/
	@:overload public function newObjectName(pp : String, type : String, name : String) : javax.management.ObjectName;
	
	/** Make a new ObjectName for AMX domain with unchecked exception */
	@:overload public function newObjectName(s : String) : javax.management.ObjectName;
	
	/**
	ObjectName for {@link BootAMXMBean}
	*/
	@:overload public function getBootAMXMBeanObjectName() : javax.management.ObjectName;
	
	/**
	Invoke the bootAMX() method on {@link BootAMXMBean}.  Upon return,
	AMX continues to load.
	A cilent should call {@link invokeWaitAMXReady} prior to use.
	*/
	@:overload public function invokeBootAMX(conn : javax.management.MBeanServerConnection) : Void;
	
	/**
	Listen for the registration of AMX DomainRoot
	Listening starts automatically.
	*/
	@:overload public function listenForDomainRoot<T : com.sun.org.glassfish.external.amx.MBeanListener.MBeanListener_Callback>(server : javax.management.MBeanServerConnection, _callback : T) : com.sun.org.glassfish.external.amx.MBeanListener<T>;
	
	/**
	Wait until AMX has loaded and is ready for use.
	<p>
	This will <em>not</em> cause AMX to load; it will block forever until AMX is ready. In other words,
	don't call this method unless it's a convenient thread that can wait forever.
	*/
	@:overload public function waitAMXReady(server : javax.management.MBeanServerConnection) : javax.management.ObjectName;
	
	/**
	Listen for the registration of the {@link BootAMXMBean}.
	Listening starts automatically.  See {@link AMXBooter#BootAMXCallback}.
	*/
	@:overload public function listenForBootAMX<T : com.sun.org.glassfish.external.amx.MBeanListener.MBeanListener_Callback>(server : javax.management.MBeanServerConnection, _callback : T) : com.sun.org.glassfish.external.amx.MBeanListener<T>;
	
	/**
	Ensure that AMX is loaded and ready to use.  This method returns only when all
	AMX subsystems have been loaded.
	It can be called more than once without ill effect, subsequent calls are ignored.
	@param conn connection to the MBeanServer
	@return the ObjectName of the domain-root MBean
	*/
	@:overload public function bootAMX(conn : javax.management.MBeanServerConnection) : javax.management.ObjectName;
	
	@:overload public function bootAMX(server : javax.management.MBeanServer) : javax.management.ObjectName;
	
	
}
@:native('com$sun$org$glassfish$external$amx$AMXGlassfish$WaitForDomainRootListenerCallback') @:internal extern class AMXGlassfish_WaitForDomainRootListenerCallback extends com.sun.org.glassfish.external.amx.MBeanListener.MBeanListener_CallbackImpl
{
	@:overload public function new(conn : javax.management.MBeanServerConnection) : Void;
	
	@:overload public function mbeanRegistered(objectName : javax.management.ObjectName, listener : com.sun.org.glassfish.external.amx.MBeanListener<Dynamic>) : Void;
	
	
}
/**
Callback for {@link MBeanListener} that waits for the BootAMXMBean to appear;
it always will load early in server startup. Once it has loaded, AMX can be booted
via {@link #bootAMX}.  A client should normally just call {@link #bootAMX}, but
this callback may be suclassed if desired, and used as a trigger to
boot AMX and then take other dependent actions.
*/
@:native('com$sun$org$glassfish$external$amx$AMXGlassfish$BootAMXCallback') extern class AMXGlassfish_BootAMXCallback extends com.sun.org.glassfish.external.amx.MBeanListener.MBeanListener_CallbackImpl
{
	@:overload public function new(conn : javax.management.MBeanServerConnection) : Void;
	
	@:overload public function mbeanRegistered(objectName : javax.management.ObjectName, listener : com.sun.org.glassfish.external.amx.MBeanListener<Dynamic>) : Void;
	
	
}
