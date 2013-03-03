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
* An abstraction that identifies a target host and communications
* protocol. The HostIdentifier, or hostid, provides a convenient string
* representation of the information needed to locate and communicate with
* a target host. The string, based on a {@link URI}, may specify the
* the communications protocol, host name, and protocol specific information
* for a target host. The format for a HostIdentifier string is:
* <pre>
*       [<I>protocol</I>:][[<I>//</I>]<I>hostname</I>][<I>:port</I>][<I>/servername</I>]
* </pre>
* There are actually no required components of this string, as a null string
* is interpreted to mean a local connection to the local host and is equivalent
* to the string <em>local://localhost</em>. The components of the
* HostIdentifier are:
* <ul>
*   <li><p><tt>protocol</tt> - The communications protocol. If omitted,
*          and a hostname is not specified, then default local protocol,
*          <em>local:</em>, is assumed. If the protocol is omitted and a
*          hostname is specified then the default remote protocol,
*          <em>rmi:</em> is assumed.
*       </p></li>
*   <li><p><tt>hostname</tt> - The hostname. If omitted, then
*          <em>localhost</em> is assumed. If the protocol is also omitted,
*          then default local protocol <em>local:</em> is also assumed.
*          If the hostname is not omitted but the protocol is omitted,
*          then the default remote protocol, <em>rmi:</em> is assumed.
*       </p></li>
*   <li><p><tt>port</tt> - The port for the communications protocol.
*          Treatment of the <tt>port</tt> parameter is implementation
*          (protocol) specific. It is unused by the default local protocol,
*          <em>local:</em>. For the default remote protocol, <em>rmi:</em>,
*          <tt>port</tt> indicates the port number of the <em>rmiregistry</em>
*          on the target host and defaults to port 1099.
*       </p></li>
*   <li><p><tt>servername</tt> - The treatment of the Path, Query, and
*          Fragment components of the HostIdentifier are implementation
*          (protocol) dependent. These components are ignored by the
*          default local protocol, <em>local:</em>. For the default remote
*          protocol, <em>rmi</em>, the Path component is interpreted as
*          the name of the RMI remote object. The Query component may
*          contain an access mode specifier <em>?mode=</em> specifying
*          <em>"r"</em> or <em>"rw"</em> access (write access currently
*          ignored). The Fragment part is ignored.
*       </p></li>
* </ul>
* <p>
* All HostIdentifier objects are represented as absolute, hierarchical URIs.
* The constructors accept relative URIs, but these will generally be
* transformed into an absolute URI specifying a default protocol. A
* HostIdentifier differs from a URI in that certain contractions and
* illicit syntactical constructions are allowed. The following are all
* valid HostIdentifier strings:
*
* <ul>
*   <li><p>&lt null &gt - transformed into "//localhost"</p></li>
*   <li><p>localhost - transformed into "//localhost"</p></li>
*   <li><p>hostname - transformed into "//hostname"</p></li>
*   <li><p>hostname:port - transformed into "//hostname:port"</p></li>
*   <li><p>proto:hostname - transformed into "proto://hostname"</p></li>
*   <li><p>proto:hostname:port - transformed into
*          "proto://hostname:port"</p></li>
*   <li><p>proto://hostname:port</p></li>
* </ul>
* </p>
*
* @see URI
* @see VmIdentifier
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class HostIdentifier
{
	/**
	* Create a HostIdentifier instance from a string value.
	*
	* @param uriString a string representing a target host. The syntax of
	*                  the string must conform to the rules specified in the
	*                  class documentation.
	*
	* @throws URISyntaxException Thrown when the uriString or its canonical
	*                            form is poorly formed. This exception may
	*                            get encapsulated into a MonitorException in
	*                            a future version.
	*
	*/
	@:overload @:public public function new(uriString : String) : Void;
	
	/**
	* Create a HostIdentifier instance from component parts of a URI.
	*
	* @param scheme the {@link URI#getScheme} component of a URI.
	* @param authority the {@link URI#getAuthority} component of a URI.
	* @param path the {@link URI#getPath} component of a URI.
	* @param query the {@link URI#getQuery} component of a URI.
	* @param fragment the {@link URI#getFragment} component of a URI.
	*
	* @throws URISyntaxException Thrown when the uriString or its canonical
	*                            form is poorly formed. This exception may
	*                            get encapsulated into a MonitorException in
	*                            a future version.
	* @see URI
	*/
	@:overload @:public public function new(scheme : String, authority : String, path : String, query : String, fragment : String) : Void;
	
	/**
	* Create a HostIdentifier instance from a VmIdentifier.
	*
	* The necessary components of the VmIdentifier are extracted and
	* reassembled into a HostIdentifier. If a "file:" scheme (protocol)
	* is specified, the the returned HostIdentifier will always be
	* equivalent to HostIdentifier("file://localhost").
	*
	* @param vmid the VmIdentifier use to construct the HostIdentifier.
	*/
	@:overload @:public public function new(vmid : sun.jvmstat.monitor.VmIdentifier) : Void;
	
	/**
	* Resolve a VmIdentifier with this HostIdentifier. A VmIdentifier, such
	* as <em>1234</em> or <em>1234@hostname</em> or any other string that
	* omits certain components of the URI string may be valid, but is certainly
	* incomplete. They are missing critical information for identifying the
	* the communications protocol, target host, or other parameters. A
	* VmIdentifier of this form is considered <em>unresolved</em>. This method
	* uses components of the HostIdentifier to resolve the missing components
	* of the VmIdentifier.
	* <p>
	* Specified components of the unresolved VmIdentifier take precedence
	* over their HostIdentifier counterparts. For example, if the VmIdentifier
	* indicates <em>1234@hostname:2099</em> and the HostIdentifier indicates
	* <em>rmi://hostname:1099/</em>, then the resolved VmIdentifier will
	* be <em>rmi://1234@hostname:2099</em>. Any component not explicitly
	* specified or assumed by the HostIdentifier, will remain unresolved in
	* resolved VmIdentifier.
	*  <p>
	* A VmIdentifier specifying a <em>file:</em> scheme (protocol), is
	* not changed in any way by this method.
	*
	* @param vmid the unresolved VmIdentifier.
	* @return VmIdentifier - the resolved VmIdentifier. If vmid was resolved
	*                        on entry to this method, then the returned
	*                        VmIdentifier will be equal, but not identical, to
	*                        vmid.
	*/
	@:overload @:public public function resolve(vmid : sun.jvmstat.monitor.VmIdentifier) : sun.jvmstat.monitor.VmIdentifier;
	
	/**
	* Return the Scheme, or protocol, portion of this HostIdentifier.
	*
	* @return String - the scheme for this HostIdentifier.
	* @see URI#getScheme()
	*/
	@:overload @:public public function getScheme() : String;
	
	/**
	* Return the Scheme Specific Part of this HostIdentifier.
	*
	* @return String - the scheme specific part for this HostIdentifier.
	* @see URI#getSchemeSpecificPart()
	*/
	@:overload @:public public function getSchemeSpecificPart() : String;
	
	/**
	* Return the User Info part of this HostIdentifier.
	*
	* @return String - the user info part for this HostIdentifier.
	* @see URI#getUserInfo()
	*/
	@:overload @:public public function getUserInfo() : String;
	
	/**
	* Return the Host part of this HostIdentifier.
	*
	* @return String - the host part for this HostIdentifier, or
	*                  "localhost" if the URI.getHost() returns null.
	* @see URI#getUserInfo()
	*/
	@:overload @:public public function getHost() : String;
	
	/**
	* Return the Port for of this HostIdentifier.
	*
	* @return String - the port for this HostIdentifier
	* @see URI#getPort()
	*/
	@:overload @:public public function getPort() : Int;
	
	/**
	* Return the Path part of this HostIdentifier.
	*
	* @return String - the path part for this HostIdentifier.
	* @see URI#getPath()
	*/
	@:overload @:public public function getPath() : String;
	
	/**
	* Return the Query part of this HostIdentifier.
	*
	* @return String - the query part for this HostIdentifier.
	* @see URI#getQuery()
	*/
	@:overload @:public public function getQuery() : String;
	
	/**
	* Return the Fragment part of this HostIdentifier.
	*
	* @return String - the fragment part for this HostIdentifier.
	* @see URI#getFragment()
	*/
	@:overload @:public public function getFragment() : String;
	
	/**
	* Return the mode indicated in this HostIdentifier.
	*
	* @return String - the mode string. If no mode is specified, then "r"
	*                  is returned. otherwise, the specified mode is returned.
	*/
	@:overload @:public public function getMode() : String;
	
	/**
	* Return the URI associated with the HostIdentifier.
	*
	* @return URI - the URI.
	* @see URI
	*/
	@:overload @:public public function getURI() : java.net.URI;
	
	/**
	* Return the hash code for this HostIdentifier. The hash code is
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
	*                   HostIdentifier and its URI field is equal to this
	*                   object's URI field. Otherwise, returns false.
	*
	* @see URI#equals(Object)
	*/
	@:overload @:public public function equals(object : Dynamic) : Bool;
	
	/**
	* Convert to a string representation. Conversion is identical to
	* calling getURI().toString(). This may change in a future release.
	*
	* @return String - a String representation of the HostIdentifier.
	*
	* @see URI#toString()
	*/
	@:overload @:public public function toString() : String;
	
	
}
