/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

import java

// exercise 6.3.2
from LoopStmt loop, MethodAccess call, Method method

  where
      loop.getAChild*() = call.getEnclosingStmt() and
      call.getMethod() = method and
      method.hasName("nextLine") and
      method.getDeclaringType().hasQualifiedName("java.util",
          "Scanner")
  select call, "This returns method nextLine of a Scanner, inside of a loop"
