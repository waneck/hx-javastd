package sun.misc;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Perf
{
	/**
	* Return a reference to the singleton Perf instance.
	* <p>
	* The getPerf() method returns the singleton instance of the Perf
	* class. The returned object provides the caller with the capability
	* for accessing the instrumentation buffer for this or another local
	* Java virtual machine.
	* <p>
	* If a security manager is installed, its <code>checkPermission</code>
	* method is called with a <code>RuntimePermission</code> with a target
	* of <em>"sun.misc.Perf.getPerf"</em>. A security exception will result
	* if the caller has not been granted this permission.
	* <p>
	* Access to the returned <code>Perf</code> object should be protected
	* by its caller and not passed on to untrusted code. This object can
	* be used to attach to the instrumentation buffer provided by this Java
	* virtual machine or for those of other Java virtual machines running
	* on the same system. The instrumentation buffer may contain senstitive
	* information. API's built on top of this interface may want to provide
	* finer grained access control to the contents of individual
	* instrumentation objects contained within the buffer.
	* <p>
	* Please note that the <em>"sun.misc.Perf.getPerf"</em> permission
	* is not a JDK specified permission.
	*
	* @return       A reference to the singleton Perf instance.
	* @throws AccessControlException  if a security manager exists and
	*               its <code>checkPermission</code> method doesn't allow
	*               access to the <em>"sun.misc.Perf.getPerf"</em> target.
	* @see  java.lang.RuntimePermission
	* @see  #attach
	*/
	@:overload public static function getPerf() : sun.misc.Perf;
	
	/**
	* Attach to the instrumentation buffer for the specified Java virtual
	* machine.
	* <p>
	* This method will attach to the instrumentation buffer for the
	* specified virtual machine. It returns a <code>ByteBuffer</code> object
	* that is initialized to access the instrumentation buffer for the
	* indicated Java virtual machine. The <code>lvmid</code> parameter is
	* a integer value that uniquely identifies the target local Java virtual
	* machine. It is typically, but not necessarily, the process id of
	* the target Java virtual machine.
	* <p>
	* If the <code>lvmid</code> identifies a Java virtual machine different
	* from the one running this method, then the coherency characteristics
	* of the buffer are implementation dependent. Implementations that do
	* not support named, coherent, shared memory may return a
	* <code>ByteBuffer</code> object that contains only a snap shot of the
	* data in the instrumentation buffer. Implementations that support named,
	* coherent, shared memory, may return a <code>ByteBuffer</code> object
	* that will be changing dynamically over time as the target Java virtual
	* machine updates its mapping of this buffer.
	* <p>
	* If the <code>lvmid</code> is 0 or equal to the actual <code>lvmid</code>
	* for the Java virtual machine running this method, then the returned
	* <code>ByteBuffer</code> object will always be coherent and dynamically
	* changing.
	* <p>
	* The attach mode specifies the access permissions requested for the
	* instrumentation buffer of the target virtual machine. The permitted
	* access permissions are:
	* <p>
	* <bl>
	* <li>"r"  - Read only access. This Java virtual machine has only
	* read access to the instrumentation buffer for the target Java
	* virtual machine.
	* <li>"rw"  - Read/Write access. This Java virtual machine has read and
	* write access to the instrumentation buffer for the target Java virtual
	* machine. This mode is currently not supported and is reserved for
	* future enhancements.
	* </bl>
	*
	* @param   lvmid            an integer that uniquely identifies the
	*                           target local Java virtual machine.
	* @param   mode             a string indicating the attach mode.
	* @return  ByteBuffer       a direct allocated byte buffer
	* @throws  IllegalArgumentException  The lvmid or mode was invalid.
	* @throws  IOException      An I/O error occurred while trying to acquire
	*                           the instrumentation buffer.
	* @throws  OutOfMemoryError The instrumentation buffer could not be mapped
	*                           into the virtual machine's address space.
	* @see     java.nio.ByteBuffer
	*/
	@:overload public function attach(lvmid : Int, mode : String) : java.nio.ByteBuffer;
	
	/**
	* Attach to the instrumentation buffer for the specified Java virtual
	* machine owned by the given user.
	* <p>
	* This method behaves just as the <code>attach(int lvmid, String mode)
	* </code> method, except that it only searches for Java virtual machines
	* owned by the specified user.
	*
	* @param   user             A <code>String</code> object containing the
	*                           name of the user that owns the target Java
	*                           virtual machine.
	* @param   lvmid            an integer that uniquely identifies the
	*                           target local Java virtual machine.
	* @param   mode             a string indicating the attach mode.
	* @return  ByteBuffer       a direct allocated byte buffer
	* @throws  IllegalArgumentException  The lvmid or mode was invalid.
	* @throws  IOException      An I/O error occurred while trying to acquire
	*                           the instrumentation buffer.
	* @throws  OutOfMemoryError The instrumentation buffer could not be mapped
	*                           into the virtual machine's address space.
	* @see     java.nio.ByteBuffer
	*/
	@:overload public function attach(user : String, lvmid : Int, mode : String) : java.nio.ByteBuffer;
	
	/**
	* Create a <code>long</code> scalar entry in the instrumentation buffer
	* with the given variability characteristic, units, and initial value.
	* <p>
	* Access to the instrument is provided through the returned <code>
	* ByteBuffer</code> object. Typically, this object should be wrapped
	* with <code>LongBuffer</code> view object.
	*
	* @param   variability the variability characteristic for this entry.
	* @param   units       the units for this entry.
	* @param   name        the name of this entry.
	* @param   value       the initial value for this entry.
	* @return  ByteBuffer  a direct allocated ByteBuffer object that
	*                      allows write access to a native memory location
	*                      containing a <code>long</code> value.
	*
	* see sun.misc.perf.Variability
	* see sun.misc.perf.Units
	* @see java.nio.ByteBuffer
	*/
	@:overload @:native public function createLong(name : String, variability : Int, units : Int, value : haxe.Int64) : java.nio.ByteBuffer;
	
	/**
	* Create a <code>String</code> entry in the instrumentation buffer with
	* the given variability characteristic, units, and initial value.
	* <p>
	* The maximum length of the <code>String</code> stored in this string
	* instrument is given in by <code>maxLength</code> parameter. Updates
	* to this instrument with <code>String</code> values with lengths greater
	* than <code>maxLength</code> will be truncated to <code>maxLength</code>.
	* The truncated value will be terminated by a null character.
	* <p>
	* The underlying implementation may further limit the length of the
	* value, but will continue to preserve the null terminator.
	* <p>
	* Access to the instrument is provided through the returned <code>
	* ByteBuffer</code> object.
	*
	* @param   variability the variability characteristic for this entry.
	* @param   units       the units for this entry.
	* @param   name        the name of this entry.
	* @param   value       the initial value for this entry.
	* @param   maxLength   the maximum string length for this string
	*                      instrument.
	* @return  ByteBuffer  a direct allocated ByteBuffer that allows
	*                      write access to a native memory location
	*                      containing a <code>long</code> value.
	*
	* see sun.misc.perf.Variability
	* see sun.misc.perf.Units
	* @see java.nio.ByteBuffer
	*/
	@:overload public function createString(name : String, variability : Int, units : Int, value : String, maxLength : Int) : java.nio.ByteBuffer;
	
	/**
	* Create a <code>String</code> entry in the instrumentation buffer with
	* the given variability characteristic, units, and initial value.
	* <p>
	* The maximum length of the <code>String</code> stored in this string
	* instrument is implied by the length of the <code>value</code> parameter.
	* Subsequent updates to the value of this instrument will be truncated
	* to this implied maximum length. The truncated value will be terminated
	* by a null character.
	* <p>
	* The underlying implementation may further limit the length of the
	* initial or subsequent value, but will continue to preserve the null
	* terminator.
	* <p>
	* Access to the instrument is provided through the returned <code>
	* ByteBuffer</code> object.
	*
	* @param   variability the variability characteristic for this entry.
	* @param   units       the units for this entry.
	* @param   name        the name of this entry.
	* @param   value       the initial value for this entry.
	* @return  ByteBuffer  a direct allocated ByteBuffer that allows
	*                      write access to a native memory location
	*                      containing a <code>long</code> value.
	*
	* see sun.misc.perf.Variability
	* see sun.misc.perf.Units
	* @see java.nio.ByteBuffer
	*/
	@:overload public function createString(name : String, variability : Int, units : Int, value : String) : java.nio.ByteBuffer;
	
	/**
	* Create a <code>byte</code> vector entry in the instrumentation buffer
	* with the given variability characteristic, units, and initial value.
	* <p>
	* The <code>maxLength</code> parameter limits the size of the byte
	* array instrument such that the initial or subsequent updates beyond
	* this length are silently ignored. No special handling of truncated
	* updates is provided.
	* <p>
	* The underlying implementation may further limit the length of the
	* length of the initial or subsequent value.
	* <p>
	* Access to the instrument is provided through the returned <code>
	* ByteBuffer</code> object.
	*
	* @param   variability the variability characteristic for this entry.
	* @param   units       the units for this entry.
	* @param   name        the name of this entry.
	* @param   value       the initial value for this entry.
	* @param   maxLength   the maximum length of this byte array.
	* @return  ByteBuffer  a direct allocated byte buffer that allows
	*                      write access to a native memory location
	*                      containing a <code>long</code> value.
	*
	* see sun.misc.perf.Variability
	* see sun.misc.perf.Units
	* @see java.nio.ByteBuffer
	*/
	@:overload @:native public function createByteArray(name : String, variability : Int, units : Int, value : java.NativeArray<java.StdTypes.Int8>, maxLength : Int) : java.nio.ByteBuffer;
	
	/**
	* Return the value of the High Resolution Counter.
	*
	* The High Resolution Counter returns the number of ticks since
	* since the start of the Java virtual machine. The resolution of
	* the counter is machine dependent and can be determined from the
	* value return by the {@link #highResFrequency} method.
	*
	* @return  the number of ticks of machine dependent resolution since
	*          the start of the Java virtual machine.
	*
	* @see #highResFrequency
	* @see java.lang.System#currentTimeMillis()
	*/
	@:overload @:native public function highResCounter() : haxe.Int64;
	
	/**
	* Returns the frequency of the High Resolution Counter, in ticks per
	* second.
	*
	* This value can be used to convert the value of the High Resolution
	* Counter, as returned from a call to the {@link #highResCounter} method,
	* into the number of seconds since the start of the Java virtual machine.
	*
	* @return  the frequency of the High Resolution Counter.
	* @see #highResCounter
	*/
	@:overload @:native public function highResFrequency() : haxe.Int64;
	
	
}
/**
* The GetPerfAction class is a convenience class for acquiring access
* to the singleton Perf instance using the
* <code>AccessController.doPrivileged()</code> method.
* <p>
* An instance of this class can be used as the argument to
* <code>AccessController.doPrivileged(PrivilegedAction)</code>.
* <p> Here is a suggested idiom for use of this class:
*
* <blockquote><pre>
* class MyTrustedClass {
*   private static final Perf perf =
*       AccessController.doPrivileged(new Perf.GetPerfAction<Perf>());
*   ...
* }
* </pre></blockquote>
* <p>
* In the presence of a security manager, the <code>MyTrustedClass</code>
* class in the above example will need to be granted the
* <em>"sun.misc.Perf.getPerf"</em> <code>RuntimePermission</code>
* permission in order to successfully acquire the singleton Perf instance.
* <p>
* Please note that the <em>"sun.misc.Perf.getPerf"</em> permission
* is not a JDK specified permission.
*
* @see  java.security.AccessController#doPrivileged(PrivilegedAction)
* @see  java.lang.RuntimePermission
*/
@:native('sun$misc$Perf$GetPerfAction') extern class Perf_GetPerfAction implements java.security.PrivilegedAction<sun.misc.Perf>
{
	/**
	* Run the <code>Perf.getPerf()</code> method in a privileged context.
	*
	* @see #getPerf
	*/
	@:overload public function run() : sun.misc.Perf;
	
	
}
