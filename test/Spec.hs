module Main where

import Core
import RIO
import qualified RIO.NonEmpty.Partial as NonEmpty.Partial

makeStep :: Text -> Text -> [Text] -> Step
makeStep name image commands =
    Step
        { name = StepName name
        , image = Image image
        , commands = NonEmpty.Partial.fromList commands
        }

makePipeline :: [Step] -> Pipeline
makePipeline steps =
    Pipeline{steps = NonEmpty.Partial.fromList steps}

-- Test values
testPipeline :: Pipeline
testPipeline =
    makePipeline
        [ makeStep "First step" "ubuntu" ["date"]
        , makeStep "Second step" "ubuntu" ["uname -r"]
        ]

testBuild :: Build
testBuild =
    Build
        { pipeline = testPipeline
        , state = BuildReady
        }

main :: IO ()
main = pure ()