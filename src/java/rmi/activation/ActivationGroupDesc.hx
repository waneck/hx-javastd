package java.rmi.activation;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ActivationGroupDesc implements java.io.Serializable
{
	/**
	* Constructs a group descriptor that uses the system defaults for group
	* implementation and code location.  Properties specify Java
	* environment overrides (which will override system properties in
	* the group implementation's VM).  The command
	* environment can control the exact command/options used in
	* starting the child VM, or can be <code>null</code> to accept
	* rmid's default.
	*
	* <p>This constructor will create an <code>ActivationGroupDesc</code>
	* with a <code>null</code> group class name, which indicates the system's
	* default <code>ActivationGroup</code> implementation.
	*
	* @param overrides the set of properties to set when the group is
	* recreated.
	* @param cmd the controlling options for executing the VM in
	* another process (or <code>null</code>).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(overrides : java.util.Properties, cmd : ActivationGroupDesc_CommandEnvironment) : Void;
	
	/**
	* Specifies an alternate group implementation and execution
	* environment to be used for the group.
	*
	* @param className the group's package qualified class name or
	* <code>null</code>. A <code>null</code> group class name indicates
	* the system's default <code>ActivationGroup</code> implementation.
	* @param location the location from where to load the group's
	* class
	* @param data the group's initialization data contained in
	* marshalled form (could contain properties, for example)
	* @param overrides a properties map which will override those set
	* by default in the subprocess environment (will be translated
	* into <code>-D</code> options), or <code>null</code>.
	* @param cmd the controlling options for executing the VM in
	* another process (or <code>null</code>).
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(className : String, location : String, data : java.rmi.MarshalledObject<Dynamic>, overrides : java.util.Properties, cmd : ActivationGroupDesc_CommandEnvironment) : Void;
	
	/**
	* Returns the group's class name (possibly <code>null</code>).  A
	* <code>null</code> group class name indicates the system's default
	* <code>ActivationGroup</code> implementation.
	* @return the group's class name
	* @since 1.2
	*/
	@:require(java2) @:overload public function getClassName() : String;
	
	/**
	* Returns the group's code location.
	* @return the group's code location
	* @since 1.2
	*/
	@:require(java2) @:overload public function getLocation() : String;
	
	/**
	* Returns the group's initialization data.
	* @return the group's initialization data
	* @since 1.2
	*/
	@:require(java2) @:overload public function getData() : java.rmi.MarshalledObject<Dynamic>;
	
	/**
	* Returns the group's property-override list.
	* @return the property-override list, or <code>null</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function getPropertyOverrides() : java.util.Properties;
	
	/**
	* Returns the group's command-environment control object.
	* @return the command-environment object, or <code>null</code>
	* @since 1.2
	*/
	@:require(java2) @:overload public function getCommandEnvironment() : ActivationGroupDesc_CommandEnvironment;
	
	/**
	* Compares two activation group descriptors for content equality.
	*
	* @param   obj     the Object to compare with
	* @return  true if these Objects are equal; false otherwise.
	* @see             java.util.Hashtable
	* @since 1.2
	*/
	@:require(java2) @:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Produce identical numbers for similar <code>ActivationGroupDesc</code>s.
	* @return an integer
	* @see java.util.Hashtable
	*/
	@:overload public function hashCode() : Int;
	
	
}
/**
* Startup options for ActivationGroup implementations.
*
* This class allows overriding default system properties and
* specifying implementation-defined options for ActivationGroups.
* @since 1.2
*/
@:require(java2) @:native('java$rmi$activation$ActivationGroupDesc$CommandEnvironment') extern class ActivationGroupDesc_CommandEnvironment implements java.io.Serializable
{
	/**
	* Create a CommandEnvironment with all the necessary
	* information.
	*
	* @param cmdpath the name of the java executable, including
	* the full path, or <code>null</code>, meaning "use rmid's default".
	* The named program <em>must</em> be able to accept multiple
	* <code>-Dpropname=value</code> options (as documented for the
	* "java" tool)
	*
	* @param argv extra options which will be used in creating the
	* ActivationGroup.  Null has the same effect as an empty
	* list.
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(cmdpath : String, argv : java.NativeArray<String>) : Void;
	
	/**
	* Fetch the configured path-qualified java command name.
	*
	* @return the configured name, or <code>null</code> if configured to
	* accept the default
	* @since 1.2
	*/
	@:require(java2) @:overload public function getCommandPath() : String;
	
	/**
	* Fetch the configured java command options.
	*
	* @return An array of the command options which will be passed
	* to the new child command by rmid.
	* Note that rmid may add other options before or after these
	* options, or both.
	* Never returns <code>null</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getCommandOptions() : java.NativeArray<String>;
	
	/**
	* Compares two command environments for content equality.
	*
	* @param       obj     the Object to compare with
	* @return      true if these Objects are equal; false otherwise.
	* @see         java.util.Hashtable
	* @since 1.2
	*/
	@:require(java2) @:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Return identical values for similar
	* <code>CommandEnvironment</code>s.
	* @return an integer
	* @see java.util.Hashtable
	*/
	@:overload public function hashCode() : Int;
	
	
}
