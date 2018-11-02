
//          Copyright Nathaniel Christen 2017.
// Distributed under the Boost Software License, Version 1.0.
//    (See accompanying file LICENSE_1_0.txt or copy at
//          http://www.boost.org/LICENSE_1_0.txt)



#include "nav-audio-1d-panel.h"

#include "styles.h"

#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QLabel>
#include <QLineEdit>
#include <QPushButton>
#include <QSlider>
#include <QButtonGroup>
#include <QGroupBox>

USING_QSNS(ScignStage)

NAV_Audio1D_Panel::NAV_Audio1D_Panel(int vmn, int vmx, int v, QWidget* parent)
  :  QFrame(parent), old_zoom_slider_value_(1), volume_min_(vmn),
    volume_max_(vmx)
{
 main_layout_ = new QVBoxLayout;
 navigation_layout_ = new QHBoxLayout;

 zoom_sample_distractor_layout_ = new QVBoxLayout;
 sample_distractor_layout_ = new QHBoxLayout;

 sample_label_ = new QLabel("sample:", this);
 sample_line_edit_ = new QLineEdit(this);
 sample_line_edit_->setPlaceholderText("?");
 sample_line_edit_->setMaximumWidth(30);

 distractor_label_ = new QLabel("distractor:", this);
 distractor_line_edit_ = new QLineEdit(this);
 distractor_line_edit_->setPlaceholderText("?");
 distractor_line_edit_->setMaximumWidth(100);

// //  to be moved to WSI ...
// abnormality_label_ = new QLabel("Abnormality:", this);
// abnormality_line_edit_ = new QLineEdit(this);
// abnormality_line_edit_->setPlaceholderText("?");
// abnormality_line_edit_->setMaximumWidth(30);

 sample_distractor_layout_->addWidget(sample_label_);
 sample_distractor_layout_->addWidget(sample_line_edit_);

 sample_distractor_layout_->addWidget(distractor_label_);
 sample_distractor_layout_->addWidget(distractor_line_edit_);

// sample_distractor_layout_->addWidget(abnormality_label_);
// sample_distractor_layout_->addWidget(abnormality_line_edit_);

 navigation_layout_ = new QHBoxLayout;
 sort_series_layout_ = new QVBoxLayout;

 zoom_sample_distractor_layout_ = new QVBoxLayout;

 volume_layout_ = new QHBoxLayout;

 zoom_sample_distractor_layout_->addLayout(sample_distractor_layout_);

// //  more WSI ...
// button_sort_series_label_ = new QLabel("Sort by: ", this);

// button_sort_series_geometric_ = new QPushButton("Geometric", this);
// button_sort_series_abnormal_ = new QPushButton("Abnormality", this);

// sort_series_button_group_ = new QButtonGroup(this);

// sort_series_button_group_->setExclusive(true);

// sort_series_button_group_->addButton(button_sort_series_geometric_);
// sort_series_button_group_->addButton(button_sort_series_abnormal_);

// button_sort_series_geometric_->setStyleSheet(toggle_button_style_sheet_());
// button_sort_series_abnormal_->setStyleSheet(toggle_button_style_sheet_());

// button_sort_series_geometric_->setCheckable(true);
// button_sort_series_geometric_->setChecked(true);

// button_sort_series_abnormal_->setCheckable(true);
// button_sort_series_abnormal_->setChecked(false);

// sort_series_layout_->addWidget(button_sort_series_label_);
// sort_series_layout_->addWidget(button_sort_series_geometric_);
// sort_series_layout_->addWidget(button_sort_series_abnormal_);

// navigation_layout_->addLayout(sort_series_layout_);

// navigation_layout_->addStretch();


 sample_up_button_ = new QPushButton(this);
 sample_down_button_ = new QPushButton(this);

 sample_first_button_ = new QPushButton(this);
 sample_replay_button_ = new QPushButton(this);


 sample_up_button_->setIcon(QIcon(DEFAULT_ICON_FOLDER "/Gtk-go-up.svg"));
 sample_down_button_->setIcon(QIcon(DEFAULT_ICON_FOLDER "/Gtk-go-down.svg"));

 sample_first_button_->setIcon(QIcon(DEFAULT_ICON_FOLDER "/Arrow-leftup-small.svg"));
 sample_replay_button_->setIcon(QIcon(DEFAULT_ICON_FOLDER "/Arrow-complex-left.svg"));


 peer_up_button_ = new QPushButton(this);
 peer_down_button_ = new QPushButton(this);

 peer_up_button_->setIcon(QIcon(DEFAULT_ICON_FOLDER "/Gtk-go-up.svg"));
 peer_down_button_->setIcon(QIcon(DEFAULT_ICON_FOLDER "/Gtk-go-down.svg"));

 connect(peer_up_button_, SIGNAL(clicked()),
   this, SIGNAL(peer_up_requested()));

 connect(peer_down_button_, SIGNAL(clicked()),
   this, SIGNAL(peer_down_requested()));


 connect(sample_up_button_, SIGNAL(clicked()),
   this, SIGNAL(sample_up_requested()));

 connect(sample_down_button_, SIGNAL(clicked()),
   this, SIGNAL(sample_down_requested()));

 connect(sample_first_button_, SIGNAL(clicked()),
   this, SIGNAL(sample_first_requested()));

 connect(sample_replay_button_, SIGNAL(clicked()),
   this, SIGNAL(sample_replay_requested()));

// connect(sample_left_button_, SIGNAL(clicked()),
//   this, SIGNAL(geometric_left_requested()));

// connect(sample_right_button_, SIGNAL(clicked()),
//   this, SIGNAL(geometric_right_requested()));

// connect(sample_previous_button_, SIGNAL(clicked()),
//   this, SIGNAL(series_previous_requested()));

// connect(sample_next_button_, SIGNAL(clicked()),
//   this, SIGNAL(series_next_requested()));


 navigation_buttons_up_down_layout_ = new QVBoxLayout;

 navigation_buttons_up_down_layout_->addWidget(sample_up_button_);
 navigation_buttons_up_down_layout_->addWidget(sample_down_button_);


 up_down_group_box_ = new QGroupBox("Play Up/Down", this);
 up_down_button_group_ = new QButtonGroup(this);


 up_down_button_group_->addButton(sample_up_button_);
 up_down_button_group_->addButton(sample_down_button_);

 up_down_group_box_->setLayout(navigation_buttons_up_down_layout_);


 navigation_layout_->addWidget(up_down_group_box_);

 //navigation_layout_->addStretch();

 peer_up_down_layout_ = new QVBoxLayout;

 peer_up_down_layout_->addWidget(peer_up_button_);
 peer_up_down_layout_->addWidget(peer_down_button_);


 peer_up_down_group_box_ = new QGroupBox("Peer Up/Down", this);
 peer_up_down_button_group_ = new QButtonGroup(this);


 peer_up_down_button_group_->addButton(peer_up_button_);
 peer_up_down_button_group_->addButton(peer_down_button_);

 peer_up_down_group_box_->setLayout(peer_up_down_layout_);

 navigation_layout_->addWidget(peer_up_down_group_box_);

// navigation_layout_->addStretch();
 //navigation_buttons_layout_ = new QHBoxLayout;


 first_replay_note_layout_ = new QVBoxLayout;
 first_replay_layout_ = new QHBoxLayout;

 first_layout_ = new QVBoxLayout;
 sample_first_label_ = new QLabel("First", this);
 first_layout_->addStretch();
 first_layout_->addWidget(sample_first_label_);
 first_layout_->addWidget(sample_first_button_);
 first_layout_->addStretch();

 first_replay_layout_->addStretch();
 first_replay_layout_->addLayout(first_layout_);

 first_replay_layout_->addStretch();

 replay_layout_ = new QVBoxLayout;
 sample_replay_label_ = new QLabel("Replay", this);
 replay_layout_->addStretch();
 replay_layout_->addWidget(sample_replay_label_);
 replay_layout_->addWidget(sample_replay_button_);
 replay_layout_->addStretch();

 first_replay_layout_->addLayout(replay_layout_);
 first_replay_layout_->addStretch();

 first_replay_note_layout_->addLayout(first_replay_layout_);

 first_replay_label_ = new QLabel("Note: Peer means samples with the same text", this);

 first_replay_note_layout_->addWidget(first_replay_label_);

 navigation_layout_->addLayout(first_replay_note_layout_);


 QLabel* volume_label = new QLabel("Volume:", this);

 volume_layout_->addWidget(volume_label);

 volume_slider_ = new QSlider(Qt::Horizontal, this);

 volume_slider_->setMinimum(volume_min_);
 volume_slider_->setMaximum(volume_max_);
 volume_slider_->setValue(v);

 connect(volume_slider_, SIGNAL(valueChanged(int)), this,
   SLOT(volume_slider_value_changed(int)));



// QString s1 = QString("%1").arg(QChar(5184));
// volume_up_button_ = new QPushButton(s1, this);
// volume_up_button_->setStyleSheet("QPushButton{font-size: 12pt;"
//                                "font-weight: bold;"
//                                "color: bsamplen;}");
//// zoom_in_button_->setFont(zif);
// volume_up_button_->setMaximumWidth(25);
// volume_up_button_->setMaximumHeight(15);


// QString s2 = QString("%1").arg(QChar(5189));
// volume_down_button_ = new QPushButton(s2, this);
// volume_down_button_->setStyleSheet("QPushButton{font-size: 12pt;"
//                                "font-weight: bold; padding:0px; "
//                                "color: bsamplen;}");
// volume_down_button_->setMaximumWidth(25);
// volume_down_button_->setMaximumHeight(15);

// connect(volume_up_button_, SIGNAL(pressed()), this, SIGNAL(zoom_in_requested()));
// connect(volume_down_button_, SIGNAL(pressed()), this, SIGNAL(zoom_out_requested()));

 volume_layout_->addStretch();

 volume_layout_->addWidget(volume_slider_);
// volume_layout_->addItem(new QSpacerItem(15, 1));

// volume_layout_->addWidget(volume_up_button_);
// volume_layout_->addItem(new QSpacerItem(5, 1));

// volume_layout_->addWidget(volume_down_button_);

// volume_layout_->addItem(new QSpacerItem(16, 1));

 volume_layout_->addStretch();

 zoom_sample_distractor_layout_->addLayout(volume_layout_);


 navigation_layout_->addLayout(zoom_sample_distractor_layout_);

 navigation_layout_->addStretch();


 main_layout_->addLayout(navigation_layout_);

// QGroupBox* mode_group_box_;

// QHBoxLayout* combined_mode_button_layout_;
// QButtonGroup* mode_button_group_;
// QPushButton* mode_zoom_button_;
// QPushButton* mode_pan_button_;
// QPushButton* mode_slide_button_;

// QPushButton* current_mode_button_;

// QGroupBox* annotations_mode_group_box_;
// QButtonGroup* annotations_mode_button_group_;
// QHBoxLayout* annotations_mode_button_layout_;
// QPushButton* annotations_mode_pan_button_;
// QPushButton* annotations_mode_rotate_button_;
// QPushButton* annotations_mode_zoom_button_;




 setLayout(main_layout_);


}

NAV_Audio1D_Panel::~NAV_Audio1D_Panel()
{

}

void NAV_Audio1D_Panel::set_sample_text(int r)
{
 sample_line_edit_->setText(QString::number(r));
}

void NAV_Audio1D_Panel::set_distractor_text(QString qs)
{
 distractor_line_edit_->setText(qs);
}

void NAV_Audio1D_Panel::volume_slider_value_changed(int val)
{
 Q_EMIT(volume_change_requested(val));

}

void NAV_Audio1D_Panel::zoom_slider_value_changed(int val)
{
 int diff = val - old_zoom_slider_value_;
 old_zoom_slider_value_ = val;
 int max = volume_slider_->maximum();
 //int current = val;

 qreal ratio = 1 + ((qreal)diff)/((qreal)max);

 //?
 //main_pixmap_item_->setScale(main_pixmap_item_->scale() * ratio);

 Q_EMIT(scale_ratio_change_requested(ratio));

}

//void NAV_Audio1D_Panel::set_sample_and_distractor_text(int r, int c)
//{
// set_sample_text(r);
// set_distractor_text(c);
//}


