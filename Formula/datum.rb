# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Datum < Formula
  desc "datum is the client CLI for interacting with Datum Server"
  homepage "https://github.com/datumforge/datum"
  version "0.4.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/datumforge/datum/releases/download/v0.4.7/datum_0.4.7_darwin_arm64.tar.gz"
      sha256 "97c61bd029d664ee7b59b22145aab4980c51c2f4a5e12b126a31ea7131c3b6be"

      def install
        bin.install "datum"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/datumforge/datum/releases/download/v0.4.7/datum_0.4.7_darwin_amd64.tar.gz"
      sha256 "89796c783924da6754b6aa58ffe3a047757f13292f84fce19272df37a9e46701"

      def install
        bin.install "datum"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/datumforge/datum/releases/download/v0.4.7/datum_0.4.7_linux_arm64.tar.gz"
      sha256 "3f3c51e6b71ccc15fdb9270c5135488962a8e4f27f1c34237fc2025a9bb73aae"

      def install
        bin.install "datum"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/datumforge/datum/releases/download/v0.4.7/datum_0.4.7_linux_amd64.tar.gz"
      sha256 "c46a8e4d984f8143478b1668bb09809f48a4ba5d9b4ed897f64c0ae9fcf11386"

      def install
        bin.install "datum"
      end
    end
  end

  test do
    system "#{bin}/datum --help"
  end
end
