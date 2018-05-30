<?php

namespace Jules0x\Elements;

use DNADesign\ElementalList\Model\ElementList;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\LiteralField;

class ElementFeaturedBlog extends ElementList
{
    private static $icon = 'font-icon-circle-star';

    private static $table_name = 'ElementFeaturedBlog';

    private static $singular_name = 'Featured blog';

    private static $description = 'List of recent blog posts';

    private static $db = [
        'Width' => 'Enum("2, 3, 4", 3)',
        'Count' => 'Int)'
    ];

    private static $has_one = [
        'Blog' => 'Blog'
    ];

    public function getCMSFields()
    {

        $fields = parent::getCMSFields();

        if (!$this->isInDB()) {
            $fields->addFieldToTab('Root.Main', LiteralField::create('SaveNotice', '<p class="message warning">Save this element before adding featured pages</p>'));
        }

        $fields->addFieldToTab('Root.Main', DropdownField::create( 'Width', 'Max No. items per row', singleton('Jules0x\Elements\ElementFeaturedBlog')->dbObject('Width')->enumValues()), 'Elements');

        return $fields;
    }

    public function getType()
    {
        return $this->config()->get('singular_name');
    }
}
