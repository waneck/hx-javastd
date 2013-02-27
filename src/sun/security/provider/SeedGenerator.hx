package sun.security.provider;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
* <P> This class generates seeds for the cryptographically strong random
* number generator.
* <P> The seed is produced using one of two techniques, via a computation
* of current system activity or from an entropy gathering device.
* <p> In the default technique the seed is  produced by counting the
* number of times the VM manages to loop in a given period. This number
* roughly reflects the machine load at that point in time.
* The samples are translated using a permutation (s-box)
* and then XORed together. This process is non linear and
* should prevent the samples from "averaging out". The s-box
* was designed to have even statistical distribution; it's specific
* values are not crucial for the security of the seed.
* We also create a number of sleeper threads which add entropy
* to the system by keeping the scheduler busy.
* Twenty such samples should give us roughly 160 bits of randomness.
* <P> These values are gathered in the background by a daemon thread
* thus allowing the system to continue performing it's different
* activites, which in turn add entropy to the random seed.
* <p> The class also gathers miscellaneous system information, some
* machine dependent, some not. This information is then hashed together
* with the 20 seed bytes.
* <P> The alternative to the above approach is to acquire seed material
* from an entropy gathering device, such as /dev/random. This can be
* accomplished by setting the value of the "securerandom.source"
* security property (in the Java security properties file) to a URL
* specifying the location of the entropy gathering device.
* In the event the specified URL cannot be accessed the default
* mechanism is used.
* The Java security properties file is located in the file named
* &lt;JAVA_HOME&gt;/lib/security/java.security.
* &lt;JAVA_HOME&gt; refers to the value of the java.home system property,
* and specifies the directory where the JRE is installed.
*
* @author Joshua Bloch
* @author Gadi Guy
*/
@:internal extern class SeedGenerator
{
	/**
	* Fill result with bytes from the queue. Wait for it if it isn't ready.
	*/
	@:overload public static function generateSeed(result : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
/*
// This method helps the test utility receive unprocessed seed bytes.
public static int genTestSeed() {
return myself.getByte();
}
*/
@:native('sun$security$provider$SeedGenerator$ThreadedSeedGenerator') @:internal extern class SeedGenerator_ThreadedSeedGenerator extends SeedGenerator implements java.lang.Runnable
{
	/**
	* This method does the actual work. It collects random bytes and
	* pushes them into the queue.
	*/
	@:overload @:final public function run() : Void;
	
	
}
/**
* This inner thread causes the thread scheduler to become 'noisy',
* thus adding entropy to the system load.
* At least one instance of this class is generated for every seed byte.
*/
@:native('sun$security$provider$SeedGenerator$ThreadedSeedGenerator$BogusThread') @:internal extern class SeedGenerator_ThreadedSeedGenerator_BogusThread implements java.lang.Runnable
{
	@:overload @:final public function run() : Void;
	
	
}
@:native('sun$security$provider$SeedGenerator$URLSeedGenerator') @:internal extern class SeedGenerator_URLSeedGenerator extends SeedGenerator
{
	
}
