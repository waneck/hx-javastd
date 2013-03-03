package com.sun.servicetag;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
* A {@code RegistrationData} object is a container of one or more
* {@link #getServiceTags service tags} that identify the
* components for product registration.
* Each {@code RegistrationData} object has a {@link #getRegistrationURN
* uniform resource name} (URN) as its identifier.
* <a name="EnvMap"></a>
* It also has an <i>environment map</i> with
* the following elements:
* <blockquote>
*       <table border=0>
*       <tr>
*          <td><tt>hostname</tt></td>
*          <td>Hostname of the system</td>
*          <td>e.g. woody</td>
*       </tr>
*       <tr>
*          <td><tt>hostId</tt></td>
*          <td>Host ID of the system</td>
*          <td>e.g. 83abc1ab</td>
*       </tr>
*       <tr>
*          <td><tt>osName</tt></td>
*          <td>Operating system name</td>
*          <td> e.g. SunOS</td>
*       </tr>
*       <tr>
*          <td><tt>osVersion</tt></td>
*          <td>Operating system version</td>
*          <td> e.g. 5.10</td>
*       </tr>
*       <tr>
*          <td><tt>osArchitecture</tt></td>
*          <td>Operating system architecture</td>
*          <td> e.g. sparc</td>
*       </tr>
*       <tr>
*          <td><tt>systemModel</tt></td>
*          <td>System model</td>
*          <td> e.g. SUNW,Sun-Fire-V440</td>
*       </tr>
*       <tr>
*          <td><tt>systemManufacturer</tt></td>
*          <td>System manufacturer</td>
*          <td> e.g. Oracle Corporation</td>
*       </tr>
*       <tr>
*          <td><tt>cpuManufacturer</tt></td>
*          <td>CPU manufacturer</td>
*          <td> e.g. Oracle Corporation</td>
*       </tr>
*       <tr>
*          <td><tt>serialNumber</tt></td>
*          <td>System serial number</td>
*          <td> e.g. BEL078932</td>
*       </tr>
*       </table>
*  </blockquote>
* The <tt>hostname</tt> and <tt>osName</tt> element must have a non-empty value.
* If an element is not available on a system and their value will be
* empty.
* <p>
* <a name="XMLSchema">
* <b>Registration XML Schema</b></a>
* <p>
* A {@code RegistrationData} object can be {@link #loadFromXML loaded} from
* and {@link #storeToXML stored} into an XML file in the format described
* by the
* <a href="https://sn-tools.central.sun.com/twiki/pub/ServiceTags/RegistrationRelayService/product_registration.xsd">
* registration data schema</a>.  The registration data schema is defined by the
* Service Tags Technology.
* <p>
* Typically the registration data is constructed at installation time
* and stored in an XML file for later service tag lookup or registration.
*
* <p>
* <b>Example Usage</b>
* <p>
* The examples below show how the {@code RegistrationData} can be
* used for product registration.
* Exception handling is not shown in these examples for clarity.
* <ol>
* <li>This example shows how the JDK creates a JDK service tag, installs it
* in the system service tag registry and adds it to the registration data.
* <br>
* <blockquote><pre>
*   // create a service tag object with an instance_urn
*   ServiceTag st = ServiceTag.newInstance(ServiceTag.generateInstanceURN(),
*                                          ....);
*   // Adds to the system service tag registry if supported
*   if (Registry.isSupported()) {
*       Registry.getSystemRegistry().addServiceTag(st);
*   }
*
*   // add to the registration data
*   RegistrationData registration  = new RegistrationData();
*   registration.addServiceTag(st);
* </pre></blockquote>
* </li>
* <li>At this point, the registration data is ready to
* send to Sun Connection for registration. This example shows how to register
* the JDK via the <i>Registration Relay Service</i>.
* <p>
* There are several registration services for Sun Connection. For example,
* the <a href="https://sn-tools.central.sun.com/twiki/bin/view/ServiceTags/RegistrationRelayService">
* Registration Relay Service</a> is a web application interface that
* processes the registration data payload sent via HTTP post
* and hosts the registration user interface for a specified
* registration URL.  Refer to the
* Registration Relay Service Specification for details.
* <p>
* <blockquote><pre>
*   // Open the connection to the URL of the registration service
*   HttpsURLConnection con = (HttpsURLConnection) url.openConnection();
*   con.setDoInput(true);
*   con.setDoOutput(true);
*   con.setUseCaches(false);
*   con.setAllowUserInteraction(false);
*   con.setRequestMethod("POST");
*   con.setRequestProperty("Content-Type", "text/xml;charset=\"utf-8\"");
*   con.connect();
*
*   // send the registration data to the registration service
*   OutputStream out = con.getOutputStream();
*   registration.storeToXML(out);
*   out.close();
* </pre></blockquote>
* </li>
* <li>This example shows how to store the registration data in an XML file.
*     for later service tag lookup or registration.
* <br>
* <blockquote><pre>
*   BufferedOutputStream out = new BufferedOutputStream(
*       new FileOutputStream(""&lt;JAVA_HOME&gt;/lib/servicetag/registration.xml"));
*   registration.storeToXML(out);
*   out.close();
* </pre></blockquote>
* </li>
* <li>This example shows how to install service tags that are in the
* registration data in the system service tag registry when determined
* to be available.  The system service tag registry might not have existed
* when the registration data was constructed.
* <br>
* <blockquote><pre>
*   if (Registry.isSupported()) {
*       Set&lt;ServiceTag&gt; svctags = registration.getServiceTags();
*       for (ServiceTag st : svctags) {
*           Registry.getSystemRegistry().addServiceTag(st);
*       }
*   }
* </pre></blockquote>
* </li>
* </ol>
*
* @see <a href="https://sunconnection.sun.com/inventory">Sun Connection Inventory Channel</a>
*/
extern class RegistrationData
{
	/**
	* Creates a {@code RegistrationData} object with a generated
	* {@link #getRegistrationURN registration URN}.
	* The following keys in the {@link #getEnvironmentMap environment map}
	* will be initialized for the configuration of the
	* running system:
	* <blockquote>
	* <tt>hostname</tt>, <tt>osName</tt>,  <tt>osVersion</tt> and
	* <tt>osArchitecture</tt>
	* </blockquote>
	* and the value of other keys may be empty.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the uniform resource name of this registration data
	* in this format:
	* <tt>urn:st:&lt;32-char {@link java.util.UUID uuid}&gt;</tt>
	*
	* @return the URN of this registration data.
	*/
	@:overload @:public public function getRegistrationURN() : String;
	
	/**
	* Returns a map containing the environment information for this
	* registration data.  See the set of <a href="#EnvMap">keys</a>
	* in the environment map. Subsequent update to the environment
	* map via the {@link #setEnvironment setEnvironment} method will not be reflected
	* in the returned map.
	*
	* @return an environment map for this registration data.
	*/
	@:overload @:public public function getEnvironmentMap() : java.util.Map<String, String>;
	
	/**
	* Sets an element of the specified {@code name} in the environment map
	* with the given {@code value}.
	*
	* @throws IllegalArgumentException if {@code name} is not a valid key
	* in the environment map, or {@code value} is not valid.
	*/
	@:overload @:public public function setEnvironment(name : String, value : String) : Void;
	
	/**
	* Returns all service tags in this registration data.
	*
	* @return  a {@link Set Set} of the service tags
	* in this registration data.
	*/
	@:overload @:public public function getServiceTags() : java.util.Set<com.sun.servicetag.ServiceTag>;
	
	/**
	* Adds a service tag to this registration data.
	* If the given service tag has an empty <tt>instance_urn</tt>,
	* this method will generate a URN and place it in the copy
	* of the service tag in this registration data.
	* This method will return the {@code ServiceTag} object
	* added to this registration data.
	*
	* @param st {@code ServiceTag} object to be added.
	* @return a {@code ServiceTag} object added to this registration data.
	*
	* @throws IllegalArgumentException if
	*   a service tag of the same {@link ServiceTag#getInstanceURN
	*   <tt>instance_urn</tt>} already exists in the registry.
	*/
	@:overload @:public @:synchronized public function addServiceTag(st : com.sun.servicetag.ServiceTag) : com.sun.servicetag.ServiceTag;
	
	/**
	* Returns a service tag of the given <tt>instance_urn</tt> in this registration
	* data.
	*
	* @param instanceURN the <tt>instance_urn</tt> of the service tag
	* @return the {@code ServiceTag} object of the given  <tt>instance_urn</tt>
	*         if exists; otherwise return {@code null}.
	*/
	@:overload @:public @:synchronized public function getServiceTag(instanceURN : String) : com.sun.servicetag.ServiceTag;
	
	/**
	* Removes a service tag of the given <tt>instance_urn</tt> from this
	* registration data.
	*
	* @param instanceURN the <tt>instance_urn</tt> of
	* the service tag to be removed.
	*
	* @return the removed {@code ServiceTag} object;
	* or {@code null} if the service tag does not exist in this
	* registration data.
	*/
	@:overload @:public @:synchronized public function removeServiceTag(instanceURN : String) : com.sun.servicetag.ServiceTag;
	
	/**
	* Updates the <tt>product_defined_instance_id</tt> in the service tag
	* of the given <tt>instance_urn</tt> in this registration data.
	*
	* @param instanceURN the <tt>instance_urn</tt> of the service tag to be updated.
	* @param productDefinedInstanceID the value of the
	* <tt>product_defined_instance_id</tt> to be set.
	*
	* @return the updated {@code ServiceTag} object;
	* or {@code null} if the service tag does not exist in this
	* registration data.
	*/
	@:overload @:public @:synchronized public function updateServiceTag(instanceURN : String, productDefinedInstanceID : String) : com.sun.servicetag.ServiceTag;
	
	/**
	* Reads the registration data from the XML document on the
	* specified input stream.  The XML document must be
	* in the format described by the <a href="#XMLSchema">
	* registration data schema</a>.
	* The specified stream is closed after this method returns.
	*
	* @param in the input stream from which to read the XML document.
	* @return a {@code RegistrationData} object read from the input
	* stream.
	*
	* @throws IllegalArgumentException if the input stream
	* contains an invalid registration data.
	*
	* @throws IOException if an error occurred when reading from the input stream.
	*/
	@:overload @:public @:static public static function loadFromXML(_in : java.io.InputStream) : com.sun.servicetag.RegistrationData;
	
	/**
	* Writes the registration data to the specified output stream
	* in the format described by the <a href="#XMLSchema">
	* registration data schema</a> with "UTF-8" encoding.
	* The specified stream remains open after this method returns.
	*
	* @param os the output stream on which to write the XML document.
	*
	* @throws IOException if an error occurred when writing to the output stream.
	*/
	@:overload @:public public function storeToXML(os : java.io.OutputStream) : Void;
	
	/**
	* Returns a newly allocated byte array containing the registration
	* data in XML format.
	*
	* @return a newly allocated byte array containing the registration
	* data in XML format.
	*/
	@:overload @:public public function toXML() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a string representation of this registration data in XML
	* format.
	*
	* @return a string representation of this registration data in XML
	*         format.
	*/
	@:overload @:public public function toString() : String;
	
	
}
