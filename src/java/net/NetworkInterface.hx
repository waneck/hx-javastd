package java.net;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class NetworkInterface
{
	/**
	* Get the name of this network interface.
	*
	* @return the name of this network interface
	*/
	@:overload public function getName() : String;
	
	/**
	* Convenience method to return an Enumeration with all or a
	* subset of the InetAddresses bound to this network interface.
	* <p>
	* If there is a security manager, its <code>checkConnect</code>
	* method is called for each InetAddress. Only InetAddresses where
	* the <code>checkConnect</code> doesn't throw a SecurityException
	* will be returned in the Enumeration. However, if the caller has the
	* {@link NetPermission}("getNetworkInformation") permission, then all
	* InetAddresses are returned.
	* @return an Enumeration object with all or a subset of the InetAddresses
	* bound to this network interface
	*/
	@:overload public function getInetAddresses() : java.util.Enumeration<java.net.InetAddress>;
	
	/**
	* Get a List of all or a subset of the <code>InterfaceAddresses</code>
	* of this network interface.
	* <p>
	* If there is a security manager, its <code>checkConnect</code>
	* method is called with the InetAddress for each InterfaceAddress.
	* Only InterfaceAddresses where the <code>checkConnect</code> doesn't throw
	* a SecurityException will be returned in the List.
	*
	* @return a <code>List</code> object with all or a subset of the
	*         InterfaceAddresss of this network interface
	* @since 1.6
	*/
	@:require(java6) @:overload public function getInterfaceAddresses() : java.util.List<java.net.InterfaceAddress>;
	
	/**
	* Get an Enumeration with all the subinterfaces (also known as virtual
	* interfaces) attached to this network interface.
	* <p>
	* For instance eth0:1 will be a subinterface to eth0.
	*
	* @return an Enumeration object with all of the subinterfaces
	* of this network interface
	* @since 1.6
	*/
	@:require(java6) @:overload public function getSubInterfaces() : java.util.Enumeration<java.net.NetworkInterface>;
	
	/**
	* Returns the parent NetworkInterface of this interface if this is
	* a subinterface, or <code>null</code> if it is a physical
	* (non virtual) interface or has no parent.
	*
	* @return The <code>NetworkInterface</code> this interface is attached to.
	* @since 1.6
	*/
	@:require(java6) @:overload public function getParent() : java.net.NetworkInterface;
	
	/**
	* Returns the index of this network interface. The index is an integer greater
	* or equal to zero, or {@code -1} for unknown. This is a system specific value
	* and interfaces with the same name can have different indexes on different
	* machines.
	*
	* @return the index of this network interface or {@code -1} if the index is
	*         unknown
	* @see #getByIndex(int)
	* @since 1.7
	*/
	@:require(java7) @:overload public function getIndex() : Int;
	
	/**
	* Get the display name of this network interface.
	* A display name is a human readable String describing the network
	* device.
	*
	* @return a non-empty string representing the display name of this network
	*         interface, or null if no display name is available.
	*/
	@:overload public function getDisplayName() : String;
	
	/**
	* Searches for the network interface with the specified name.
	*
	* @param   name
	*          The name of the network interface.
	*
	* @return  A <tt>NetworkInterface</tt> with the specified name,
	*          or <tt>null</tt> if there is no network interface
	*          with the specified name.
	*
	* @throws  SocketException
	*          If an I/O error occurs.
	*
	* @throws  NullPointerException
	*          If the specified name is <tt>null</tt>.
	*/
	@:overload public static function getByName(name : String) : java.net.NetworkInterface;
	
	/**
	* Get a network interface given its index.
	*
	* @param index an integer, the index of the interface
	* @return the NetworkInterface obtained from its index, or {@code null} if
	*         there is no interface with such an index on the system
	* @throws  SocketException  if an I/O error occurs.
	* @throws  IllegalArgumentException if index has a negative value
	* @see #getIndex()
	* @since 1.7
	*/
	@:require(java7) @:overload public static function getByIndex(index : Int) : java.net.NetworkInterface;
	
	/**
	* Convenience method to search for a network interface that
	* has the specified Internet Protocol (IP) address bound to
	* it.
	* <p>
	* If the specified IP address is bound to multiple network
	* interfaces it is not defined which network interface is
	* returned.
	*
	* @param   addr
	*          The <tt>InetAddress</tt> to search with.
	*
	* @return  A <tt>NetworkInterface</tt>
	*          or <tt>null</tt> if there is no network interface
	*          with the specified IP address.
	*
	* @throws  SocketException
	*          If an I/O error occurs.
	*
	* @throws  NullPointerException
	*          If the specified address is <tt>null</tt>.
	*/
	@:overload public static function getByInetAddress(addr : java.net.InetAddress) : java.net.NetworkInterface;
	
	/**
	* Returns all the interfaces on this machine. Returns null if no
	* network interfaces could be found on this machine.
	*
	* NOTE: can use getNetworkInterfaces()+getInetAddresses()
	*       to obtain all IP addresses for this node
	*
	* @return an Enumeration of NetworkInterfaces found on this machine
	* @exception  SocketException  if an I/O error occurs.
	*/
	@:overload public static function getNetworkInterfaces() : java.util.Enumeration<java.net.NetworkInterface>;
	
	/**
	* Returns whether a network interface is up and running.
	*
	* @return  <code>true</code> if the interface is up and running.
	* @exception       SocketException if an I/O error occurs.
	* @since 1.6
	*/
	@:require(java6) @:overload public function isUp() : Bool;
	
	/**
	* Returns whether a network interface is a loopback interface.
	*
	* @return  <code>true</code> if the interface is a loopback interface.
	* @exception       SocketException if an I/O error occurs.
	* @since 1.6
	*/
	@:require(java6) @:overload public function isLoopback() : Bool;
	
	/**
	* Returns whether a network interface is a point to point interface.
	* A typical point to point interface would be a PPP connection through
	* a modem.
	*
	* @return  <code>true</code> if the interface is a point to point
	*          interface.
	* @exception       SocketException if an I/O error occurs.
	* @since 1.6
	*/
	@:require(java6) @:overload public function isPointToPoint() : Bool;
	
	/**
	* Returns whether a network interface supports multicasting or not.
	*
	* @return  <code>true</code> if the interface supports Multicasting.
	* @exception       SocketException if an I/O error occurs.
	* @since 1.6
	*/
	@:require(java6) @:overload public function supportsMulticast() : Bool;
	
	/**
	* Returns the hardware address (usually MAC) of the interface if it
	* has one and if it can be accessed given the current privileges.
	* If a security manager is set, then the caller must have
	* the permission {@link NetPermission}("getNetworkInformation").
	*
	* @return  a byte array containing the address, or <code>null</code> if
	*          the address doesn't exist, is not accessible or a security
	*          manager is set and the caller does not have the permission
	*          NetPermission("getNetworkInformation")
	*
	* @exception       SocketException if an I/O error occurs.
	* @since 1.6
	*/
	@:require(java6) @:overload public function getHardwareAddress() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the Maximum Transmission Unit (MTU) of this interface.
	*
	* @return the value of the MTU for that interface.
	* @exception       SocketException if an I/O error occurs.
	* @since 1.6
	*/
	@:require(java6) @:overload public function getMTU() : Int;
	
	/**
	* Returns whether this interface is a virtual interface (also called
	* subinterface).
	* Virtual interfaces are, on some systems, interfaces created as a child
	* of a physical interface and given different settings (like address or
	* MTU). Usually the name of the interface will the name of the parent
	* followed by a colon (:) and a number identifying the child since there
	* can be several virtual interfaces attached to a single physical
	* interface.
	*
	* @return <code>true</code> if this interface is a virtual interface.
	* @since 1.6
	*/
	@:require(java6) @:overload public function isVirtual() : Bool;
	
	/**
	* Compares this object against the specified object.
	* The result is <code>true</code> if and only if the argument is
	* not <code>null</code> and it represents the same NetworkInterface
	* as this object.
	* <p>
	* Two instances of <code>NetworkInterface</code> represent the same
	* NetworkInterface if both name and addrs are the same for both.
	*
	* @param   obj   the object to compare against.
	* @return  <code>true</code> if the objects are the same;
	*          <code>false</code> otherwise.
	* @see     java.net.InetAddress#getAddress()
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
