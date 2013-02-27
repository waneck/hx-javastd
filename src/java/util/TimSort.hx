package java.util;
/*
* Copyright 2009 Google Inc.  All Rights Reserved.
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
* A stable, adaptive, iterative mergesort that requires far fewer than
* n lg(n) comparisons when running on partially sorted arrays, while
* offering performance comparable to a traditional mergesort when run
* on random arrays.  Like all proper mergesorts, this sort is stable and
* runs O(n log n) time (worst case).  In the worst case, this sort requires
* temporary storage space for n/2 object references; in the best case,
* it requires only a small constant amount of space.
*
* This implementation was adapted from Tim Peters's list sort for
* Python, which is described in detail here:
*
*   http://svn.python.org/projects/python/trunk/Objects/listsort.txt
*
* Tim's C code may be found here:
*
*   http://svn.python.org/projects/python/trunk/Objects/listobject.c
*
* The underlying techniques are described in this paper (and may have
* even earlier origins):
*
*  "Optimistic Sorting and Information Theoretic Complexity"
*  Peter McIlroy
*  SODA (Fourth Annual ACM-SIAM Symposium on Discrete Algorithms),
*  pp 467-474, Austin, Texas, 25-27 January 1993.
*
* While the API to this class consists solely of static methods, it is
* (privately) instantiable; a TimSort instance holds the state of an ongoing
* sort, assuming the input array is large enough to warrant the full-blown
* TimSort. Small arrays are sorted in place, using a binary insertion sort.
*
* @author Josh Bloch
*/
@:internal extern class TimSort<T>
{
	
}
