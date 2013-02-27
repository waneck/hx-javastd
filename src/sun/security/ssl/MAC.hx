package sun.security.ssl;
/*
* Copyright (c) 1996, 2013, Oracle and/or its affiliates. All rights reserved.
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
* This class computes the "Message Authentication Code" (MAC) for each
* SSL message.  This is essentially a shared-secret signature, used to
* provide integrity protection for SSL messages.  The MAC is actually
* one of several keyed hashes, as associated with the cipher suite and
* protocol version.  (SSL v3.0 uses one construct, TLS uses another.)
* <P>
* NOTE: MAC computation is the only place in the SSL protocol that the
* sequence number is used.  It's also reset to zero with each change of
* a cipher spec, so this is the only place this state is needed.
*
* @author David Brownell
* @author Andreas Sterbenz
*/
@:internal extern class MAC
{
	
}
