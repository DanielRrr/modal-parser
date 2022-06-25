module AST (
        Form(..),
        Ag ) where

-- | The type of agents, a synonym of String
type Ag = String

data Form
  = PropVar Integer -- Proposition formulas
  | Neg Form        -- Boolean negation
  | Conj Form Form  -- Boolean conjunction
  | Disj Form Form  -- Boolean disjunction
  | Impl Form Form  -- Boolean implication
  | Dyn Form Form   -- The test formula
  | K Ag Form       -- The knowledge operator
  deriving Show
