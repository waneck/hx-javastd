package sun.jvmstat.monitor;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* An abstraction that identifies a target Java Virtual Machine.
* The VmIdentifier, or vmid, provides a convenient string representation
* of the information needed to locate and communicate with a target
* Java Virtual Machine. The string, based on a {@link URI}, may specify
* the communications protocol, host name, local vm identifier, and protocol
* specific information for a target Java Virtual Machine. The format for
* a VmIdentifier string is:
* <pre>
*      [<I>protocol</I>:][<I>//</I>]<I><B>lvmid</B></I>[<I>@hostname</I>][<I>:port</I>][<I>/servername</I>]
* </pre>
* The only required component of this string is the Local Virtual Machine
* Identifier, or <tt>lvmid</tt>, which uniquely identifies the target
* Java Virtual Machine on a host. The optional components of the VmIdentifier
* include:
* <ul>
*   <li><p><tt>protocol</tt> - The communications protocol. A VmIdentifier
*          omitting the protocol must be resolved against a HostIdentifier
*          using {@link HostIdentifier#resolve}.
*       </p></li>
*   <li><p><tt>hostname</tt> - A hostname or IP address indicating the target
*          host. A VmIdentifier omitting the protocol must be resolved
*          against a HostIdentifier using {@link HostIdentifier#resolve}.
*       </p></li>
*   <li><p><tt>port</tt> - The port for the communications protocol.
*          Treatment of the <tt>port</tt> parameter is implementation
*          (protocol) specific. A VmIdentifier omitting the protocol should
*          be resolved against a HostIdentifier using
*          {@link HostIdentifier#resolve}.
*       </p></li>
*   <li><p><tt>servername</tt> - The treatment of the Path, Query, and
*          Fragment components of the VmIdentifier are implementation
*          (protocol) dependent. A VmIdentifier omitting the protocol should
*          be resolved against a HostIdentifier using
*          {@link HostIdentifier#resolve}.
*       </p></li>
* </ul>
* <p>
* All VmIdentifier instances are constructed as absolute, hierarchical URIs.
* The constructors will accept relative (and even some malformed,
* though convenient) URI strings. Such strings are transformed into
* legitimate, absolute URI strings.
* </p>
* <p>
* With the exception of <em>file:</em> based VmIdentifier strings, all
* VmIdentifier strings must include a <tt>lvmid</tt>. Attempting to construct
* a non-file based VmIdentifier that doesn't include a <tt>lvmid</tt>
* component will result in a <tt>MonitorException</tt>.
* </p>
* <p>
* Here are some examples of VmIdentifier strings.
* <ul>
*    <li><p>Relative URIs</p></li>
*      <ul>
*         <li><p><em>1234</em> - Specifies the Java Virtual Machine
*                identified by lvmid <em>1234</em> on an unnamed host.
*                This string is transformed into the absolute form
*                <em>//1234</em>, which must be resolved against a
*                HostIdentifier.
*         </p></li>
*         <li><p><em>1234@hostname</em> - Specifies the Java Virtual
*                Machine identified by lvmid <em>1234</em> on host
*                <em>hostname</em> with an unnamed protocol.
*                This string is transformed into the absolute form
*                <em>//1234@hostname</em>, which must be resolved against
*                a HostIdentifier.
*         </p></li>
*         <li><p><em>1234@hostname:2099</em> - Specifies the Java Virtual
*                Machine identified by lvmid <em>1234</em> on host
*                <em>hostname</em> with an unnamed protocol, but with
*                port <em>2099</em>. This string is transformed into
*                the absolute form <em>//1234@hostname:2099</em>, which
*                must be resolved against a HostIdentifier.
*         </p></li>
*      </ul>
*    <li><p>Absolute URIs</p></li>
*      <ul>
*         <li><p><em>rmi://1234@hostname:2099/remoteobjectname</em> -
*                Specifies the Java Virtual Machine identified by lvmid
*                <em>1234</em> on host <em>hostname</em> accessed
*                using the <em>rmi:</em> protocol through the rmi remote
*                object named <em>remoteobjectname</em> as registered with
*                the <em>rmiserver</em> on port <em>2099</em> on host
*                <em>hostname</em>.
*         </p></li>
*         <li><p><em>file:/path/file</em> - Identifies a Java Virtual Machine
*                through accessing a special file based protocol to use as
*                the communications mechanism.
*         </p></li>
*      </ul>
* </ul>
* </p>
*
* @see URI
* @see HostIdentifier
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class VmIdentifier
{
	/**
	* Create a VmIdentifier instance from a string value.
	*
	* @param uriString a string representing a target Java Virtual Machine.
	*                  The syntax of the string must conforms to the rules
	*                  specified in the class documentation.
	* @throws URISyntaxException Thrown when the uriString or its canonical
	*                            form is poorly formed.
	*/
	@:overload @:public public function new(uriString : String) : Void;
	
	/**
	* Create a VmIdentifier instance from a URI object.
	*
	* @param uri a well formed, absolute URI indicating the
	*            target Java Virtual Machine.
	* @throws URISyntaxException Thrown if the URI is missing some
	*                            required component.
	*/
	@:overload @:public public function new(uri : java.net.URI) : Void;
	
	/**
	* Return the corresponding HostIdentifier for this VmIdentifier.
	* <p>
	* This method constructs a HostIdentifier object from the VmIdentifier.
	* If the VmIdentifier is not specific about the protocol or other
	* components of the URI, then the resulting HostIdentifier will
	* be constructed based on this missing information. Typically, the
	* missing components will have result in the HostIdentifier assigning
	* assumed defaults that allow the VmIdentifier to be resolved according
	* to those defaults.
	* </p>
	* <p>
	* For example, a VmIdentifier that specifies only a <tt>lvmid</tt>
	* will result in a HostIdentifier for <em>localhost</em> utilizing
	* the default local protocol, <em>local:</em>. A VmIdentifier that
	* specifies both a <tt>vmid</tt> and a <tt>hostname</tt> will result
	* in a HostIdentifier for the specified host with the default remote
	* protocol, <em>rmi:</em>, using the protocol defaults for the
	* <tt>port</tt> and <tt>servername</tt> components.
	* </p>
	*
	* @return HostIdentifier - the host identifier for the host containing
	*                          the Java Virtual Machine represented by this
	*                          VmIdentifier.
	* @throws URISyntaxException Thrown if a bad host URI is constructed.
	*                            This exception may get encapsulated into
	*                            a MonitorException in a future version.
	*/
	@:overload @:public public function getHostIdentifier() : sun.jvmstat.monitor.HostIdentifier;
	
	/**
	* Return the Scheme, or protocol, portion of this VmIdentifier.
	*
	* @return String - the scheme for this VmIdentifier.
	* @see URI#getScheme()
	*/
	@:overload @:public public function getScheme() : String;
	
	/**
	* Return the Scheme Specific Part of this VmIdentifier.
	*
	* @return String - the Scheme Specific Part for this VmIdentifier.
	* @see URI#getSchemeSpecificPart()
	*/
	@:overload @:public public function getSchemeSpecificPart() : String;
	
	/**
	* Return the UserInfo part of this VmIdentifier.
	*
	* @return String - the UserInfo part for this VmIdentifier.
	* @see URI#getUserInfo()
	*/
	@:overload @:public public function getUserInfo() : String;
	
	/**
	* Return the Host part of this VmIdentifier.
	*
	* @return String - the Host part for this VmIdentifier.
	* @see URI#getHost()
	*/
	@:overload @:public public function getHost() : String;
	
	/**
	* Return the Port part of this VmIdentifier.
	*
	* @return int - the Port part for this VmIdentifier.
	* @see URI#getPort()
	*/
	@:overload @:public public function getPort() : Int;
	
	/**
	* Return the Authority part of this VmIdentifier.
	*
	* @return String - the Authority part for this VmIdentifier.
	* @see URI#getAuthority()
	*/
	@:overload @:public public function getAuthority() : String;
	
	/**
	* Return the Path part of this VmIdentifier.
	*
	* @return String - the Path part for this VmIdentifier.
	* @see URI#getPath()
	*/
	@:overload @:public public function getPath() : String;
	
	/**
	* Return the Query part of this VmIdentifier.
	*
	* @return String - the Query part for this VmIdentifier.
	* @see URI#getQuery()
	*/
	@:overload @:public public function getQuery() : String;
	
	/**
	* Return the Fragment part of this VmIdentifier.
	*
	* @return String - the Fragment part for this VmIdentifier.
	* @see URI#getFragment()
	*/
	@:overload @:public public function getFragment() : String;
	
	/**
	* Return the Local Virtual Machine Identifier for this VmIdentifier.
	* The Local Virtual Machine Identifier is also known as the
	* <em>lvmid</em>.
	*
	* @return int - the lvmid for this VmIdentifier.
	*/
	@:overload @:public public function getLocalVmId() : Int;
	
	/**
	* Return the mode indicated in this VmIdentifier.
	*
	* @return String - the mode string. If no mode is specified, then "r"
	*                  is returned. otherwise, the specified mode is returned.
	*/
	@:overload @:public public function getMode() : String;
	
	/**
	* Return the URI associated with the VmIdentifier.
	*
	* @return URI - the URI.
	* @see URI
	*/
	@:overload @:public public function getURI() : java.net.URI;
	
	/**
	* Return the hash code for this VmIdentifier. The hash code is
	* identical to the hash code for the contained URI.
	*
	* @return int - the hashcode.
	* @see URI#hashCode()
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Test for quality with other objects.
	*
	* @param object the object to be test for equality.
	* @return boolean - returns true if the given object is of type
	*                   VmIdentifier and its URI field is equal to
	*                   this object's URI field. Otherwise, return false.
	*
	* @see URI#equals(Object)
	*/
	@:overload @:public public function equals(object : Dynamic) : Bool;
	
	/**
	* Convert to a string representation. Conversion is identical to
	* calling getURI().toString(). This may change in a future release.
	*
	* @return String - a String representation of the VmIdentifier.
	*
	* @see URI#toString()
	*/
	@:overload @:public public function toString() : String;
	
	
}
