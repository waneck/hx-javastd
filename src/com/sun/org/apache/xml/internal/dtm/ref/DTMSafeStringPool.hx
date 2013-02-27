package com.sun.org.apache.xml.internal.dtm.ref;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: DTMSafeStringPool.java,v 1.2.4.1 2005/09/15 08:15:04 suresh_emailid Exp $
*/
/** <p>Like DTMStringPool, but threadsafe. It's been proposed that DTMs
* share their string pool(s); that raises threadsafety issues which
* this addresses. Of course performance is inferior to that of the
* bare-bones version.</p>
*
* <p>Status: Passed basic test in main().</p>
* */
extern class DTMSafeStringPool extends com.sun.org.apache.xml.internal.dtm.ref.DTMStringPool
{
	@:overload @:synchronized override public function removeAllElements() : Void;
	
	/** @return string whose value is uniquely identified by this integer index.
	* @throws java.lang.ArrayIndexOutOfBoundsException
	*  if index doesn't map to a string.
	* */
	@:overload @:synchronized override public function indexToString(i : Int) : String;
	
	/** @return integer index uniquely identifying the value of this string. */
	@:overload @:synchronized override public function stringToIndex(s : String) : Int;
	
	/** Command-line unit test driver. This test relies on the fact that
	* this version of the pool assigns indices consecutively, starting
	* from zero, as new unique strings are encountered.
	*/
	@:overload public static function _main(args : java.NativeArray<String>) : Void;
	
	
}
