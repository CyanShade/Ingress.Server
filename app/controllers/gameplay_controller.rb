class GameplayController < ApplicationController
  protect_from_forgery :except => [:findNearbyPortals, :getObjectsInCells]

  def collectItemsFromPortal
    render json: {
        'error' => 'TOO_OFTEN'
    }
  end

  def findNearbyPortals
    render json: {
        'result' => [
            [
                # guid
                '901d258ba2b94c58ae39d3585a8ff287',
                # timestamp
                1412819501000,
                {
                    'locationE6' => {
                        'latE6' => 37.132839 * 1E6,
                        'lngE6' => -95.785483 * 1E6
                    },#37.132839,-95.785583
                    'controllingTeam' => {
                        'team' => 'RESISTANCE'
                    },
                    'imageByUrl' => {
                        'imageUrl' => 'http://www.sanjoseca.gov/images/pages/N2326/Station%202.jpg'
                    },
                    'portalV2' => {
                        'descriptiveText' => {
                            'TITLE' => 'Police Station',
                            'ADDRESS' => '123 fake street'
                        }
                    }
                }
            ]
        ]
    }
  end

  def getObjectsInCells
    render json: {
        'gameBasket' => {
            'gameEntities' => [
                [
                    # guid
                    '1785f1827bde4308afd2cf4aeaadf542',
                    # timestamp
                    1412819501000,
                    {
                        'locationE6' => {
                            'latE6' => 37.132838 * 1E6,
                            'lngE6' => -95.785582 * 1E6
                        },#37.132839,-95.785583
                        'resourceWithLevels' => {
                            'resourceType' => nil
                        },
                        'modResource' => {
                            'resourceType' => nil
                        },
                        'controllingTeam' => {
                            'team' => 'RESISTANCE'
                        },
                        'imageByUrl' => {
                            'imageUrl' => 'http://www.sanjoseca.gov/images/pages/N2326/Station%202.jpg'
                        },
                        'portalV2' => {
                            'descriptiveText' => {
                                'TITLE' => 'Fire Station',
                                'ADDRESS' => '123 fake street'
                            },
                            'linkedModArray' => [
                                nil,
                                nil,
                                nil,
                                nil
                            ]
                        },
                        'captured' => {
                            'capturingPlayerId' => '1648d89413394f9f9b1889c4c4b44a47'
                        },
                        'resonatorArray' => {
                            'resonators' => [
                                nil,
                                nil,
                                nil,
                                nil,
                                nil,
                                nil,
                                nil,
                                nil
                            ]
                        }
                    }
                ]
            ]
        }
    }
  end
end
